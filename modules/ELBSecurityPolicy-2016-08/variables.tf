# This file is auto generated, please do not edit by hand

variable "ssl_policy_name" {
  description = "Name of SSL Policy"
  type        = string
}

variable "load_balancer_id" {
  description = "ID of the ELB"
  type        = string
}

variable "load_balancer_port" {
  description = "TCP Port to affect"
  type        = number
}

variable "adh_aes128_gcm_sha256" {
  description = "ADH-AES128-GCM-SHA256"
  type        = string
  default     = "false"
}

variable "adh_aes128_sha" {
  description = "ADH-AES128-SHA"
  type        = string
  default     = "false"
}

variable "adh_aes128_sha256" {
  description = "ADH-AES128-SHA256"
  type        = string
  default     = "false"
}

variable "adh_aes256_gcm_sha384" {
  description = "ADH-AES256-GCM-SHA384"
  type        = string
  default     = "false"
}

variable "adh_aes256_sha" {
  description = "ADH-AES256-SHA"
  type        = string
  default     = "false"
}

variable "adh_aes256_sha256" {
  description = "ADH-AES256-SHA256"
  type        = string
  default     = "false"
}

variable "adh_camellia128_sha" {
  description = "ADH-CAMELLIA128-SHA"
  type        = string
  default     = "false"
}

variable "adh_camellia256_sha" {
  description = "ADH-CAMELLIA256-SHA"
  type        = string
  default     = "false"
}

variable "adh_des_cbc3_sha" {
  description = "ADH-DES-CBC3-SHA"
  type        = string
  default     = "false"
}

variable "adh_des_cbc_sha" {
  description = "ADH-DES-CBC-SHA"
  type        = string
  default     = "false"
}

variable "adh_rc4_md5" {
  description = "ADH-RC4-MD5"
  type        = string
  default     = "false"
}

variable "adh_seed_sha" {
  description = "ADH-SEED-SHA"
  type        = string
  default     = "false"
}

variable "aes128_gcm_sha256" {
  description = "AES128-GCM-SHA256"
  type        = string
  default     = "true"
}

variable "aes128_sha" {
  description = "AES128-SHA"
  type        = string
  default     = "true"
}

variable "aes128_sha256" {
  description = "AES128-SHA256"
  type        = string
  default     = "true"
}

variable "aes256_gcm_sha384" {
  description = "AES256-GCM-SHA384"
  type        = string
  default     = "true"
}

variable "aes256_sha" {
  description = "AES256-SHA"
  type        = string
  default     = "true"
}

variable "aes256_sha256" {
  description = "AES256-SHA256"
  type        = string
  default     = "true"
}

variable "camellia128_sha" {
  description = "CAMELLIA128-SHA"
  type        = string
  default     = "false"
}

variable "camellia256_sha" {
  description = "CAMELLIA256-SHA"
  type        = string
  default     = "false"
}

variable "des_cbc3_md5" {
  description = "DES-CBC3-MD5"
  type        = string
  default     = "false"
}

variable "des_cbc3_sha" {
  description = "DES-CBC3-SHA"
  type        = string
  default     = "false"
}

variable "des_cbc_md5" {
  description = "DES-CBC-MD5"
  type        = string
  default     = "false"
}

variable "des_cbc_sha" {
  description = "DES-CBC-SHA"
  type        = string
  default     = "false"
}

variable "dhe_dss_aes128_gcm_sha256" {
  description = "DHE-DSS-AES128-GCM-SHA256"
  type        = string
  default     = "false"
}

variable "dhe_dss_aes128_sha" {
  description = "DHE-DSS-AES128-SHA"
  type        = string
  default     = "false"
}

variable "dhe_dss_aes128_sha256" {
  description = "DHE-DSS-AES128-SHA256"
  type        = string
  default     = "false"
}

variable "dhe_dss_aes256_gcm_sha384" {
  description = "DHE-DSS-AES256-GCM-SHA384"
  type        = string
  default     = "false"
}

variable "dhe_dss_aes256_sha" {
  description = "DHE-DSS-AES256-SHA"
  type        = string
  default     = "false"
}

variable "dhe_dss_aes256_sha256" {
  description = "DHE-DSS-AES256-SHA256"
  type        = string
  default     = "false"
}

variable "dhe_dss_camellia128_sha" {
  description = "DHE-DSS-CAMELLIA128-SHA"
  type        = string
  default     = "false"
}

variable "dhe_dss_camellia256_sha" {
  description = "DHE-DSS-CAMELLIA256-SHA"
  type        = string
  default     = "false"
}

variable "dhe_dss_seed_sha" {
  description = "DHE-DSS-SEED-SHA"
  type        = string
  default     = "false"
}

variable "dhe_rsa_aes128_gcm_sha256" {
  description = "DHE-RSA-AES128-GCM-SHA256"
  type        = string
  default     = "false"
}

variable "dhe_rsa_aes128_sha" {
  description = "DHE-RSA-AES128-SHA"
  type        = string
  default     = "false"
}

variable "dhe_rsa_aes128_sha256" {
  description = "DHE-RSA-AES128-SHA256"
  type        = string
  default     = "false"
}

variable "dhe_rsa_aes256_gcm_sha384" {
  description = "DHE-RSA-AES256-GCM-SHA384"
  type        = string
  default     = "false"
}

variable "dhe_rsa_aes256_sha" {
  description = "DHE-RSA-AES256-SHA"
  type        = string
  default     = "false"
}

variable "dhe_rsa_aes256_sha256" {
  description = "DHE-RSA-AES256-SHA256"
  type        = string
  default     = "false"
}

variable "dhe_rsa_camellia128_sha" {
  description = "DHE-RSA-CAMELLIA128-SHA"
  type        = string
  default     = "false"
}

variable "dhe_rsa_camellia256_sha" {
  description = "DHE-RSA-CAMELLIA256-SHA"
  type        = string
  default     = "false"
}

variable "dhe_rsa_seed_sha" {
  description = "DHE-RSA-SEED-SHA"
  type        = string
  default     = "false"
}

variable "ecdhe_ecdsa_aes128_gcm_sha256" {
  description = "ECDHE-ECDSA-AES128-GCM-SHA256"
  type        = string
  default     = "true"
}

variable "ecdhe_ecdsa_aes128_sha" {
  description = "ECDHE-ECDSA-AES128-SHA"
  type        = string
  default     = "true"
}

variable "ecdhe_ecdsa_aes128_sha256" {
  description = "ECDHE-ECDSA-AES128-SHA256"
  type        = string
  default     = "true"
}

variable "ecdhe_ecdsa_aes256_gcm_sha384" {
  description = "ECDHE-ECDSA-AES256-GCM-SHA384"
  type        = string
  default     = "true"
}

variable "ecdhe_ecdsa_aes256_sha" {
  description = "ECDHE-ECDSA-AES256-SHA"
  type        = string
  default     = "true"
}

variable "ecdhe_ecdsa_aes256_sha384" {
  description = "ECDHE-ECDSA-AES256-SHA384"
  type        = string
  default     = "true"
}

variable "ecdhe_ecdsa_rc4_sha" {
  description = "ECDHE-ECDSA-RC4-SHA"
  type        = string
  default     = "false"
}

variable "ecdhe_rsa_aes128_gcm_sha256" {
  description = "ECDHE-RSA-AES128-GCM-SHA256"
  type        = string
  default     = "true"
}

variable "ecdhe_rsa_aes128_sha" {
  description = "ECDHE-RSA-AES128-SHA"
  type        = string
  default     = "true"
}

variable "ecdhe_rsa_aes128_sha256" {
  description = "ECDHE-RSA-AES128-SHA256"
  type        = string
  default     = "true"
}

variable "ecdhe_rsa_aes256_gcm_sha384" {
  description = "ECDHE-RSA-AES256-GCM-SHA384"
  type        = string
  default     = "true"
}

variable "ecdhe_rsa_aes256_sha" {
  description = "ECDHE-RSA-AES256-SHA"
  type        = string
  default     = "true"
}

variable "ecdhe_rsa_aes256_sha384" {
  description = "ECDHE-RSA-AES256-SHA384"
  type        = string
  default     = "true"
}

variable "ecdhe_rsa_rc4_sha" {
  description = "ECDHE-RSA-RC4-SHA"
  type        = string
  default     = "false"
}

variable "edh_dss_des_cbc3_sha" {
  description = "EDH-DSS-DES-CBC3-SHA"
  type        = string
  default     = "false"
}

variable "edh_dss_des_cbc_sha" {
  description = "EDH-DSS-DES-CBC-SHA"
  type        = string
  default     = "false"
}

variable "edh_rsa_des_cbc3_sha" {
  description = "EDH-RSA-DES-CBC3-SHA"
  type        = string
  default     = "false"
}

variable "edh_rsa_des_cbc_sha" {
  description = "EDH-RSA-DES-CBC-SHA"
  type        = string
  default     = "false"
}

variable "exp_adh_des_cbc_sha" {
  description = "EXP-ADH-DES-CBC-SHA"
  type        = string
  default     = "false"
}

variable "exp_adh_rc4_md5" {
  description = "EXP-ADH-RC4-MD5"
  type        = string
  default     = "false"
}

variable "exp_des_cbc_sha" {
  description = "EXP-DES-CBC-SHA"
  type        = string
  default     = "false"
}

variable "exp_edh_dss_des_cbc_sha" {
  description = "EXP-EDH-DSS-DES-CBC-SHA"
  type        = string
  default     = "false"
}

variable "exp_edh_rsa_des_cbc_sha" {
  description = "EXP-EDH-RSA-DES-CBC-SHA"
  type        = string
  default     = "false"
}

variable "exp_krb5_des_cbc_md5" {
  description = "EXP-KRB5-DES-CBC-MD5"
  type        = string
  default     = "false"
}

variable "exp_krb5_des_cbc_sha" {
  description = "EXP-KRB5-DES-CBC-SHA"
  type        = string
  default     = "false"
}

variable "exp_krb5_rc2_cbc_md5" {
  description = "EXP-KRB5-RC2-CBC-MD5"
  type        = string
  default     = "false"
}

variable "exp_krb5_rc2_cbc_sha" {
  description = "EXP-KRB5-RC2-CBC-SHA"
  type        = string
  default     = "false"
}

variable "exp_krb5_rc4_md5" {
  description = "EXP-KRB5-RC4-MD5"
  type        = string
  default     = "false"
}

variable "exp_krb5_rc4_sha" {
  description = "EXP-KRB5-RC4-SHA"
  type        = string
  default     = "false"
}

variable "exp_rc2_cbc_md5" {
  description = "EXP-RC2-CBC-MD5"
  type        = string
  default     = "false"
}

variable "exp_rc4_md5" {
  description = "EXP-RC4-MD5"
  type        = string
  default     = "false"
}

variable "idea_cbc_sha" {
  description = "IDEA-CBC-SHA"
  type        = string
  default     = "false"
}

variable "krb5_des_cbc3_md5" {
  description = "KRB5-DES-CBC3-MD5"
  type        = string
  default     = "false"
}

variable "krb5_des_cbc3_sha" {
  description = "KRB5-DES-CBC3-SHA"
  type        = string
  default     = "false"
}

variable "krb5_des_cbc_md5" {
  description = "KRB5-DES-CBC-MD5"
  type        = string
  default     = "false"
}

variable "krb5_des_cbc_sha" {
  description = "KRB5-DES-CBC-SHA"
  type        = string
  default     = "false"
}

variable "krb5_rc4_md5" {
  description = "KRB5-RC4-MD5"
  type        = string
  default     = "false"
}

variable "krb5_rc4_sha" {
  description = "KRB5-RC4-SHA"
  type        = string
  default     = "false"
}

variable "protocol_sslv3" {
  description = "Protocol-SSLv3"
  type        = string
  default     = "false"
}

variable "protocol_tlsv1" {
  description = "Protocol-TLSv1"
  type        = string
  default     = "true"
}

variable "protocol_tlsv11" {
  description = "Protocol-TLSv1.1"
  type        = string
  default     = "true"
}

variable "protocol_tlsv12" {
  description = "Protocol-TLSv1.2"
  type        = string
  default     = "true"
}

variable "psk_3des_ede_cbc_sha" {
  description = "PSK-3DES-EDE-CBC-SHA"
  type        = string
  default     = "false"
}

variable "psk_aes128_cbc_sha" {
  description = "PSK-AES128-CBC-SHA"
  type        = string
  default     = "false"
}

variable "psk_aes256_cbc_sha" {
  description = "PSK-AES256-CBC-SHA"
  type        = string
  default     = "false"
}

variable "psk_rc4_sha" {
  description = "PSK-RC4-SHA"
  type        = string
  default     = "false"
}

variable "rc2_cbc_md5" {
  description = "RC2-CBC-MD5"
  type        = string
  default     = "false"
}

variable "rc4_md5" {
  description = "RC4-MD5"
  type        = string
  default     = "false"
}

variable "rc4_sha" {
  description = "RC4-SHA"
  type        = string
  default     = "false"
}

variable "seed_sha" {
  description = "SEED-SHA"
  type        = string
  default     = "false"
}

variable "server_defined_cipher_order" {
  description = "Server-Defined-Cipher-Order"
  type        = string
  default     = "true"
}
