# This file is auto generated, please do not edit by hand

resource "aws_lb_ssl_negotiation_policy" "policy" {
  count         = "${var.create}"
  name          = "${var.ssl_policy_name}"
  load_balancer = "${var.load_balancer_id}"
  lb_port       = "${var.load_balancer_port}"


  attribute {
    name  = "ADH-AES128-GCM-SHA256"
    value = "${var.adh_aes128_gcm_sha256}"
  }

  attribute {
    name  = "ADH-AES128-SHA"
    value = "${var.adh_aes128_sha}"
  }

  attribute {
    name  = "ADH-AES128-SHA256"
    value = "${var.adh_aes128_sha256}"
  }

  attribute {
    name  = "ADH-AES256-GCM-SHA384"
    value = "${var.adh_aes256_gcm_sha384}"
  }

  attribute {
    name  = "ADH-AES256-SHA"
    value = "${var.adh_aes256_sha}"
  }

  attribute {
    name  = "ADH-AES256-SHA256"
    value = "${var.adh_aes256_sha256}"
  }

  attribute {
    name  = "ADH-CAMELLIA128-SHA"
    value = "${var.adh_camellia128_sha}"
  }

  attribute {
    name  = "ADH-CAMELLIA256-SHA"
    value = "${var.adh_camellia256_sha}"
  }

  attribute {
    name  = "ADH-DES-CBC3-SHA"
    value = "${var.adh_des_cbc3_sha}"
  }

  attribute {
    name  = "ADH-DES-CBC-SHA"
    value = "${var.adh_des_cbc_sha}"
  }

  attribute {
    name  = "ADH-RC4-MD5"
    value = "${var.adh_rc4_md5}"
  }

  attribute {
    name  = "ADH-SEED-SHA"
    value = "${var.adh_seed_sha}"
  }

  attribute {
    name  = "AES128-GCM-SHA256"
    value = "${var.aes128_gcm_sha256}"
  }

  attribute {
    name  = "AES128-SHA"
    value = "${var.aes128_sha}"
  }

  attribute {
    name  = "AES128-SHA256"
    value = "${var.aes128_sha256}"
  }

  attribute {
    name  = "AES256-GCM-SHA384"
    value = "${var.aes256_gcm_sha384}"
  }

  attribute {
    name  = "AES256-SHA"
    value = "${var.aes256_sha}"
  }

  attribute {
    name  = "AES256-SHA256"
    value = "${var.aes256_sha256}"
  }

  attribute {
    name  = "CAMELLIA128-SHA"
    value = "${var.camellia128_sha}"
  }

  attribute {
    name  = "CAMELLIA256-SHA"
    value = "${var.camellia256_sha}"
  }

  attribute {
    name  = "DES-CBC3-MD5"
    value = "${var.des_cbc3_md5}"
  }

  attribute {
    name  = "DES-CBC3-SHA"
    value = "${var.des_cbc3_sha}"
  }

  attribute {
    name  = "DES-CBC-MD5"
    value = "${var.des_cbc_md5}"
  }

  attribute {
    name  = "DES-CBC-SHA"
    value = "${var.des_cbc_sha}"
  }

  attribute {
    name  = "DHE-DSS-AES128-GCM-SHA256"
    value = "${var.dhe_dss_aes128_gcm_sha256}"
  }

  attribute {
    name  = "DHE-DSS-AES128-SHA"
    value = "${var.dhe_dss_aes128_sha}"
  }

  attribute {
    name  = "DHE-DSS-AES128-SHA256"
    value = "${var.dhe_dss_aes128_sha256}"
  }

  attribute {
    name  = "DHE-DSS-AES256-GCM-SHA384"
    value = "${var.dhe_dss_aes256_gcm_sha384}"
  }

  attribute {
    name  = "DHE-DSS-AES256-SHA"
    value = "${var.dhe_dss_aes256_sha}"
  }

  attribute {
    name  = "DHE-DSS-AES256-SHA256"
    value = "${var.dhe_dss_aes256_sha256}"
  }

  attribute {
    name  = "DHE-DSS-CAMELLIA128-SHA"
    value = "${var.dhe_dss_camellia128_sha}"
  }

  attribute {
    name  = "DHE-DSS-CAMELLIA256-SHA"
    value = "${var.dhe_dss_camellia256_sha}"
  }

  attribute {
    name  = "DHE-DSS-SEED-SHA"
    value = "${var.dhe_dss_seed_sha}"
  }

  attribute {
    name  = "DHE-RSA-AES128-GCM-SHA256"
    value = "${var.dhe_rsa_aes128_gcm_sha256}"
  }

  attribute {
    name  = "DHE-RSA-AES128-SHA"
    value = "${var.dhe_rsa_aes128_sha}"
  }

  attribute {
    name  = "DHE-RSA-AES128-SHA256"
    value = "${var.dhe_rsa_aes128_sha256}"
  }

  attribute {
    name  = "DHE-RSA-AES256-GCM-SHA384"
    value = "${var.dhe_rsa_aes256_gcm_sha384}"
  }

  attribute {
    name  = "DHE-RSA-AES256-SHA"
    value = "${var.dhe_rsa_aes256_sha}"
  }

  attribute {
    name  = "DHE-RSA-AES256-SHA256"
    value = "${var.dhe_rsa_aes256_sha256}"
  }

  attribute {
    name  = "DHE-RSA-CAMELLIA128-SHA"
    value = "${var.dhe_rsa_camellia128_sha}"
  }

  attribute {
    name  = "DHE-RSA-CAMELLIA256-SHA"
    value = "${var.dhe_rsa_camellia256_sha}"
  }

  attribute {
    name  = "DHE-RSA-SEED-SHA"
    value = "${var.dhe_rsa_seed_sha}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-GCM-SHA256"
    value = "${var.ecdhe_ecdsa_aes128_gcm_sha256}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-SHA"
    value = "${var.ecdhe_ecdsa_aes128_sha}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-SHA256"
    value = "${var.ecdhe_ecdsa_aes128_sha256}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-GCM-SHA384"
    value = "${var.ecdhe_ecdsa_aes256_gcm_sha384}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-SHA"
    value = "${var.ecdhe_ecdsa_aes256_sha}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-SHA384"
    value = "${var.ecdhe_ecdsa_aes256_sha384}"
  }

  attribute {
    name  = "ECDHE-ECDSA-RC4-SHA"
    value = "${var.ecdhe_ecdsa_rc4_sha}"
  }

  attribute {
    name  = "ECDHE-RSA-AES128-GCM-SHA256"
    value = "${var.ecdhe_rsa_aes128_gcm_sha256}"
  }

  attribute {
    name  = "ECDHE-RSA-AES128-SHA"
    value = "${var.ecdhe_rsa_aes128_sha}"
  }

  attribute {
    name  = "ECDHE-RSA-AES128-SHA256"
    value = "${var.ecdhe_rsa_aes128_sha256}"
  }

  attribute {
    name  = "ECDHE-RSA-AES256-GCM-SHA384"
    value = "${var.ecdhe_rsa_aes256_gcm_sha384}"
  }

  attribute {
    name  = "ECDHE-RSA-AES256-SHA"
    value = "${var.ecdhe_rsa_aes256_sha}"
  }

  attribute {
    name  = "ECDHE-RSA-AES256-SHA384"
    value = "${var.ecdhe_rsa_aes256_sha384}"
  }

  attribute {
    name  = "ECDHE-RSA-RC4-SHA"
    value = "${var.ecdhe_rsa_rc4_sha}"
  }

  attribute {
    name  = "EDH-DSS-DES-CBC3-SHA"
    value = "${var.edh_dss_des_cbc3_sha}"
  }

  attribute {
    name  = "EDH-DSS-DES-CBC-SHA"
    value = "${var.edh_dss_des_cbc_sha}"
  }

  attribute {
    name  = "EDH-RSA-DES-CBC3-SHA"
    value = "${var.edh_rsa_des_cbc3_sha}"
  }

  attribute {
    name  = "EDH-RSA-DES-CBC-SHA"
    value = "${var.edh_rsa_des_cbc_sha}"
  }

  attribute {
    name  = "EXP-ADH-DES-CBC-SHA"
    value = "${var.exp_adh_des_cbc_sha}"
  }

  attribute {
    name  = "EXP-ADH-RC4-MD5"
    value = "${var.exp_adh_rc4_md5}"
  }

  attribute {
    name  = "EXP-DES-CBC-SHA"
    value = "${var.exp_des_cbc_sha}"
  }

  attribute {
    name  = "EXP-EDH-DSS-DES-CBC-SHA"
    value = "${var.exp_edh_dss_des_cbc_sha}"
  }

  attribute {
    name  = "EXP-EDH-RSA-DES-CBC-SHA"
    value = "${var.exp_edh_rsa_des_cbc_sha}"
  }

  attribute {
    name  = "EXP-KRB5-DES-CBC-MD5"
    value = "${var.exp_krb5_des_cbc_md5}"
  }

  attribute {
    name  = "EXP-KRB5-DES-CBC-SHA"
    value = "${var.exp_krb5_des_cbc_sha}"
  }

  attribute {
    name  = "EXP-KRB5-RC2-CBC-MD5"
    value = "${var.exp_krb5_rc2_cbc_md5}"
  }

  attribute {
    name  = "EXP-KRB5-RC2-CBC-SHA"
    value = "${var.exp_krb5_rc2_cbc_sha}"
  }

  attribute {
    name  = "EXP-KRB5-RC4-MD5"
    value = "${var.exp_krb5_rc4_md5}"
  }

  attribute {
    name  = "EXP-KRB5-RC4-SHA"
    value = "${var.exp_krb5_rc4_sha}"
  }

  attribute {
    name  = "EXP-RC2-CBC-MD5"
    value = "${var.exp_rc2_cbc_md5}"
  }

  attribute {
    name  = "EXP-RC4-MD5"
    value = "${var.exp_rc4_md5}"
  }

  attribute {
    name  = "IDEA-CBC-SHA"
    value = "${var.idea_cbc_sha}"
  }

  attribute {
    name  = "KRB5-DES-CBC3-MD5"
    value = "${var.krb5_des_cbc3_md5}"
  }

  attribute {
    name  = "KRB5-DES-CBC3-SHA"
    value = "${var.krb5_des_cbc3_sha}"
  }

  attribute {
    name  = "KRB5-DES-CBC-MD5"
    value = "${var.krb5_des_cbc_md5}"
  }

  attribute {
    name  = "KRB5-DES-CBC-SHA"
    value = "${var.krb5_des_cbc_sha}"
  }

  attribute {
    name  = "KRB5-RC4-MD5"
    value = "${var.krb5_rc4_md5}"
  }

  attribute {
    name  = "KRB5-RC4-SHA"
    value = "${var.krb5_rc4_sha}"
  }

  attribute {
    name  = "Protocol-SSLv3"
    value = "${var.protocol_sslv3}"
  }

  attribute {
    name  = "Protocol-TLSv1"
    value = "${var.protocol_tlsv1}"
  }

  attribute {
    name  = "Protocol-TLSv1.1"
    value = "${var.protocol_tlsv11}"
  }

  attribute {
    name  = "Protocol-TLSv1.2"
    value = "${var.protocol_tlsv12}"
  }

  attribute {
    name  = "PSK-3DES-EDE-CBC-SHA"
    value = "${var.psk_3des_ede_cbc_sha}"
  }

  attribute {
    name  = "PSK-AES128-CBC-SHA"
    value = "${var.psk_aes128_cbc_sha}"
  }

  attribute {
    name  = "PSK-AES256-CBC-SHA"
    value = "${var.psk_aes256_cbc_sha}"
  }

  attribute {
    name  = "PSK-RC4-SHA"
    value = "${var.psk_rc4_sha}"
  }

  attribute {
    name  = "RC2-CBC-MD5"
    value = "${var.rc2_cbc_md5}"
  }

  attribute {
    name  = "RC4-MD5"
    value = "${var.rc4_md5}"
  }

  attribute {
    name  = "RC4-SHA"
    value = "${var.rc4_sha}"
  }

  attribute {
    name  = "SEED-SHA"
    value = "${var.seed_sha}"
  }

  attribute {
    name  = "Server-Defined-Cipher-Order"
    value = "${var.server_defined_cipher_order}"
  }

}