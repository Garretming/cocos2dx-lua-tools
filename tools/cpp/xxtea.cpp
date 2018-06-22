/***********************************************************************
 
 Copyright 2006-2009 Ma Bingyao
 Copyright 2013 Gao Chunhui, Liu Tao
 
 These sources is free software. Redistributions of source code must
 retain the above copyright notice. Redistributions in binary form
 must reproduce the above copyright notice. You can redistribute it
 freely. You can use it with any free or commercial software.
 
 These sources is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY. Without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 
 github: https://github.com/liut/pecl-xxtea
 
 *************************************************************************/

#include "xxtea.h"
#include <memory.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>

static void xxtea_long_encrypt(xxtea_long *v, xxtea_long len, xxtea_long *k)
{
    xxtea_long n = len - 1;
    xxtea_long z = v[n], y = v[0], p, q = 6 + 52 / (n + 1), sum = 0, e;
    if (n < 1) {
        return;
    }
    while (0 < q--) {
        sum += XXTEA_DELTA;
        e = sum >> 2 & 3;
        for (p = 0; p < n; p++) {
            y = v[p + 1];
            z = v[p] += XXTEA_MX;
        }
        y = v[0];
        z = v[n] += XXTEA_MX;
    }
}

static void xxtea_long_decrypt(xxtea_long *v, xxtea_long len, xxtea_long *k)
{
    xxtea_long n = len - 1;
    xxtea_long z = v[n], y = v[0], p, q = 6 + 52 / (n + 1), sum = q * XXTEA_DELTA, e;
    if (n < 1) {
        return;
    }
    while (sum != 0) {
        e = sum >> 2 & 3;
        for (p = n; p > 0; p--) {
            z = v[p - 1];
            y = v[p] -= XXTEA_MX;
        }
        z = v[n];
        y = v[0] -= XXTEA_MX;
        sum -= XXTEA_DELTA;
    }
}

static unsigned char *fix_key_length(unsigned char *key, xxtea_long key_len)
{
    unsigned char *tmp = (unsigned char *)malloc(16);
    memcpy(tmp, key, key_len);
    memset(tmp + key_len, '\0', 16 - key_len);
    return tmp;
}

static xxtea_long *xxtea_to_long_array(unsigned char *data, xxtea_long len, int include_length, xxtea_long *ret_len) {
    xxtea_long i, n, *result;
    
    n = len >> 2;
    n = (((len & 3) == 0) ? n : n + 1);
    if (include_length) {
        result = (xxtea_long *)malloc((n + 1) << 2);
        result[n] = len;
        *ret_len = n + 1;
    } else {
        result = (xxtea_long *)malloc(n << 2);
        *ret_len = n;
    }
    memset(result, 0, n << 2);
    for (i = 0; i < len; i++) {
        result[i >> 2] |= (xxtea_long)data[i] << ((i & 3) << 3);
    }
    
    return result;
}

static unsigned char *xxtea_to_byte_array(xxtea_long *data, xxtea_long len, int include_length, xxtea_long *ret_len) {
    xxtea_long i, n, m;
    unsigned char *result;
    
    n = len << 2;
    if (include_length) {
        m = data[len - 1];
        if ((m < n - 7) || (m > n - 4)) return NULL;
        n = m;
    }
    result = (unsigned char *)malloc(n + 1);
    for (i = 0; i < n; i++) {
        result[i] = (unsigned char)((data[i >> 2] >> ((i & 3) << 3)) & 0xff);
    }
    result[n] = '\0';
    *ret_len = n;
    
    return result;
}

static unsigned char *do_xxtea_encrypt(unsigned char *data, xxtea_long len, unsigned char *key, xxtea_long *ret_len) {
    unsigned char *result;
    xxtea_long *v, *k, v_len, k_len;
    
    v = xxtea_to_long_array(data, len, 1, &v_len);
    k = xxtea_to_long_array(key, 16, 0, &k_len);
    xxtea_long_encrypt(v, v_len, k);
    result = xxtea_to_byte_array(v, v_len, 0, ret_len);
    free(v);
    free(k);
    
    return result;
}

static unsigned char *do_xxtea_decrypt(unsigned char *data, xxtea_long len, unsigned char *key, xxtea_long *ret_len) {
    unsigned char *result;
    xxtea_long *v, *k, v_len, k_len;
    
    v = xxtea_to_long_array(data, len, 0, &v_len);
    k = xxtea_to_long_array(key, 16, 0, &k_len);
    xxtea_long_decrypt(v, v_len, k);
    result = xxtea_to_byte_array(v, v_len, 1, ret_len);
    free(v);
    free(k);
    
    return result;
}

unsigned char *xxtea_encrypt(unsigned char *data, xxtea_long data_len, unsigned char *key, xxtea_long key_len, xxtea_long *ret_length)
{
    unsigned char *result;
    
    *ret_length = 0;
    
    if (key_len < 16) {
        unsigned char *key2 = fix_key_length(key, key_len);
        result = do_xxtea_encrypt(data, data_len, key2, ret_length);
        free(key2);
    }
    else
    {
        result = do_xxtea_encrypt(data, data_len, key, ret_length);
    }
    
    return result;
}

unsigned char *xxtea_decrypt(unsigned char *data, xxtea_long data_len, unsigned char *key, xxtea_long key_len, xxtea_long *ret_length)
{
    unsigned char *result;
    
    *ret_length = 0;
    
    if (key_len < 16) {
        unsigned char *key2 = fix_key_length(key, key_len);
        result = do_xxtea_decrypt(data, data_len, key2, ret_length);
        free(key2);
    }
    else
    {
        result = do_xxtea_decrypt(data, data_len, key, ret_length);
    }
    
    return result;
}

/* }}} */
static const char* key = "this is xxtea password&&!23!@#4QWEASDZXC567890.)()!..!!()*&<.";
static int key_len = strlen(key);

static const char sign_key[32] = {0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7a, 0x7b, 0x7c, 0x7d, 0x7e, 0x7f, 0x7f, 0x7e, 0x7d, 0x7c, 0x7b, 0x7a, 0x79, 0x78, 0x77, 0x76, 0x75, 0x74, 0x73, 0x72, 0x71, 0x70};

int main(int argc, char* argv[])
{

    std::ifstream in(argv[1],std::ios::binary);
    std::ofstream out(argv[2],std::ios::binary);
    std::string type = argv[3];
    if(in.good() && in.is_open() && out.good() && out.is_open())   //文件打开成功
    {
        in.seekg(0,std::ios::end);
        int count = in.tellg();
        in.seekg(std::ios::beg);
        char *s = new char[count];
        in.read(s, count);

        xxtea_long ret_length = 0;
        unsigned char* ret = xxtea_encrypt((unsigned char*)s, (xxtea_long)count,(unsigned char *)key, (xxtea_long)key_len, &ret_length);

        if (type == "lua")
        {
            out.write((char*)sign_key, 32);
            out.write((char*)ret, ret_length);
        }
        else if(type == "image")
        {
            out.write((char*)sign_key, 32);
            out.write((char*)ret, ret_length);
        }
        else if(type == "proto")
        {
            //out.write((char*)sign_key_pb, sign_key_pb_len);
            out.write((char*)ret, ret_length);
        }


        in.close();
        out.close();
    }
    return 0;
}