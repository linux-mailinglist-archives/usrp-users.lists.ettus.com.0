Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B5BD24C56
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jan 2026 14:41:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BD72C386D6A
	for <lists+usrp-users@lfdr.de>; Thu, 15 Jan 2026 08:41:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768484490; bh=fZfOUCuZmCuxbUdbAmInwD9U2Cr7+hNW0sFk3apOBp8=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zGThpFSnCv6mvkHKs7oL5otmRXLePh09GjqIAmXgBLs4XYyPRei/zT3vixmmOSu0E
	 n2TZ0VcM/X36+34S3Ld2yZ2hTp+HjQj7ZYLtK+8XqnH2mHiBvI7Tx4zJnuUbWqBllt
	 jfenVo8Srlk226iMmgEEHwSQ+bNcP2boAV0x28rYgjoCl88f/rBFyZ/i1S4eHtHjsA
	 qX/eM4mYif3lfA5cgxV1ykrcJrjZqBWLad4CGlmw+D7UastBj9uqOAFgeYEg6aYByX
	 2R+OLOrAOsJO9dtbGmm23SwXrAHWktlYQdeJANIUgCRq32F3L9LNY9D8NbjazuiOs5
	 PdVZaPNQCxsWQ==
Received: from lxmtout2.gsi.de (lxmtout2.gsi.de [140.181.3.112])
	by mm2.emwd.com (Postfix) with ESMTPS id E6444386D14
	for <usrp-users@lists.ettus.com>; Thu, 15 Jan 2026 08:40:25 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout2.gsi.de (Postfix) with ESMTP id 3F33820350E8
	for <usrp-users@lists.ettus.com>; Thu, 15 Jan 2026 14:40:24 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at lxmtout2.gsi.de
Received: from lxmtout2.gsi.de ([127.0.0.1])
	by localhost (lxmtout2.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 0ddDXneHNh91 for <usrp-users@lists.ettus.com>;
	Thu, 15 Jan 2026 14:40:24 +0100 (CET)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout2.gsi.de (Postfix) with ESMTPS id 2A02C20350E6
	for <usrp-users@lists.ettus.com>; Thu, 15 Jan 2026 14:40:24 +0100 (CET)
Received: from [140.181.69.163] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.35; Thu, 15 Jan
 2026 14:40:23 +0100
Message-ID: <2ce8603c-3e73-4dc7-819a-de10356057ba@gsi.de>
Date: Thu, 15 Jan 2026 14:40:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Philipp Niedermayer <p.niedermayer@gsi.de>
Content-Language: de-DE, en-GB
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvex5.Campus.gsi.de (10.10.4.95) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: JU6JH5VWMFDMTNYOQVABJ7XCICLVH4YU
X-Message-ID-Hash: JU6JH5VWMFDMTNYOQVABJ7XCICLVH4YU
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] NI-RIO error using USRP X310 over MXI with PCIe-8371 adapter on Ubuntu 24.04 LTS
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JU6JH5VWMFDMTNYOQVABJ7XCICLVH4YU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0435918982684644231=="

--===============0435918982684644231==
Content-Language: de-DE, en-GB
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms080003010200000700070708"

--------------ms080003010200000700070708
Content-Type: multipart/alternative;
 boundary="------------AUQoHi1PtVObLpnPIaWLRxWw"

--------------AUQoHi1PtVObLpnPIaWLRxWw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

RGVhciBhbGwsDQoNCndlIGFyZSB1c2luZyB0aGUgVVNSUCBYMzEwIGNvbm5lY3RlZCBvdmVy
IE1YSSB3aXRoIGEgUENJZS04MzcxIGNhcmQuIA0KVGhpcyB1c2VkIHRvIHdvcmsgd2VsbCB1
cCB0byBpbmNsdWRpbmcgVWJ1bnR1IDIyLjA0IExUUy4gTm93IGFmdGVyIA0KdXBkYXRpbmcg
dG8gVWJ1bnR1IDI0LjA0IExUUyB3ZSBhcmUgZXhwZXJpZW5jaW5nIHRoZSBjb25uZWN0aW5n
IGlzc3VlIA0KZGVzY3JpYmVkIGluIHRoZSBmb2xsb3dpbmcuIEkgYW0gYXdhcmUgdGhhdCAx
MEcgRXRoZXJuZXQgaXMgdGhlIA0KcmVjb21tZW5kZWQgYWx0ZXJuYXRpdmUsIGJ1dCB0aGUg
UENJZSBjb25uZWN0aW9uIGlzIGJlbmVmaWNpYWwgZm9yIHVzLCANCmFzIGl0IGFsbG93cyB0
byBxdWlja2x5IHN3aXRjaCBiZXR3ZWVuIEZQR0EgaW1hZ2VzIGZvciBkaWZmZXJlbnQgDQph
cHBsaWNhdGlvbnMgb24tdGhlLWZseSB3aXRob3V0IGhhdmluZyB0byBwb3dlciBjeWNsaW5n
IHRoZSBYMzEwIChyZW1vdGUgDQpvcGVyYXRpb24pLiBBY2NvcmRpbmcgdG8gTkksIFJJTyBp
cyBmdWxseSBzdXBwb3J0ZWQgb24gVWJ1bnR1IDI0LjA0IExUUyANCnNvIGl0IHNob3VsZCB3
b3JrLg0KDQpEb2VzIGFueW9uZSBoYXZlIGV4cGVyaWVuY2Ugd2l0aCB0aGlzIG9uIFVidW50
dSAyNC4wNCBMVFMgb3IgYW55IA0Kc3VnZ2VzdGlvbnMgaG93IHRvIGlkZW50aWZ5IGFuZCBm
aXggdGhlIGlzc3VlIHdvdWxkIGJlIHdlbGNvbWUhDQoNCg0KKklzc3VlIGRlc2NyaXB0aW9u
OioNCg0KVGhlIFVTUlAgWDMxMCBpcyBkaXNjb3ZlcmFibGUgdXNpbmcgInVoZF9maW5kX2Rl
dmljZXMiIGFuZCBzaG93cyB1cCANCmNvcnJlY3RseSBhcyByZXNvdXJjZSBSSU8wLiBJdCdz
IGNvcnJlY3RseSBlbnVtZXJhdGVkIGluIGxzcGNpZSB1c2luZyANCm5pdXNycHJpb2sgZHJp
dmVycyBhbmQgdGhlIG5pdXNycHJpb3BjIHNlcnZpY2UgaXMgcnVubmluZy4gSG93ZXZlciwg
DQpldmVyeXRoaW5nIGJleW9uZCB0aGF0IGRvZXMgbm90IHdvcmssIGkuZS4gYW55IGZsb3dn
cmFwaCBmYWlscy4gRXZlbiB0aGUgDQoidWhkX3VzcnBfcHJvYmUiIGZhaWxzIHdpdGggdGhl
IGZvbGxvd2luZyBhZnRlciBhIGNsZWFuIHJlYm9vdDoNCg0KJCB1aGRfdXNycF9wcm9iZQ0K
W0lORk9dIFtVSERdIGxpbnV4OyBHTlUgQysrIHZlcnNpb24gMTMuMy4wOyBCb29zdF8xMDgz
MDA7IA0KVUhEXzQuOS4wLjArZHMxLTF+bm9ibGUyDQpbSU5GT10gW1gzMDBdIFgzMDAgaW5p
dGlhbGl6YXRpb24gc2VxdWVuY2UuLi4NCltJTkZPXSBbWDMwMF0gQ29ubmVjdGluZyB0byBu
aXVzcnByaW9ycGMgYXQgbG9jYWxob3N0OjU0NDQuLi4NCltJTkZPXSBbWDMwMF0gVXNpbmcg
TFZCSVRYIGJpdGZpbGUgDQovdXNyL3NoYXJlL3VoZC80LjkuMC9pbWFnZXMvdXNycF94MzEw
X2ZwZ2FfSEcubHZiaXR4DQpFcnJvcjogUnVudGltZUVycm9yOiB4MzAwX2ltcGw6IENvdWxk
IG5vdCBpbml0aWFsaXplIFJJTyBzZXNzaW9uLiANClVua25vd24gZXJyb3IuIChFcnJvciBj
b2RlIC02MzE1MCkNCg0KJCB1aGRfdXNycF9wcm9iZQ0KW0lORk9dIFtVSERdIGxpbnV4OyBH
TlUgQysrIHZlcnNpb24gMTMuMy4wOyBCb29zdF8xMDgzMDA7IA0KVUhEXzQuOS4wLjArZHMx
LTF+bm9ibGUyDQpbSU5GT10gW1gzMDBdIFgzMDAgaW5pdGlhbGl6YXRpb24gc2VxdWVuY2Uu
Li4NCltJTkZPXSBbWDMwMF0gQ29ubmVjdGluZyB0byBuaXVzcnByaW9ycGMgYXQgbG9jYWxo
b3N0OjU0NDQuLi4NCltJTkZPXSBbWDMwMF0gVXNpbmcgTFZCSVRYIGJpdGZpbGUgDQovdXNy
L3NoYXJlL3VoZC80LjkuMC9pbWFnZXMvdXNycF94MzEwX2ZwZ2FfSEcubHZiaXR4DQpFcnJv
cjogUnVudGltZUVycm9yOiB4MzAwX2ltcGw6IENvdWxkIG5vdCBpbml0aWFsaXplIFJJTyBz
ZXNzaW9uLiBBIA0KZmF1bHQgb24gdGhlIG5ldHdvcmsgY2F1c2VkIHRoZSBSUEMgb3BlcmF0
aW9uIHRvIGZhaWwuIChFcnJvciBjb2RlIC02MzA0MikNCg0KQW5kIGV2ZXJ5IHN1YnNlcXVl
bnQgdHJ5IHJlc3VsdHMgaW4gdGhlIHNhbWUgbmV0d29yayBmYXVsdCBlcnJvci4NCg0KDQoq
U2V0dXA6Kg0KDQogICogVVNSUCBYMzEwIGNvbm5lY3RlZCBvdmVyIE1YSSB3aXRoIGEgUENJ
ZS04MzcxIGNhcmQuIFVidW50dSAyNC4wNCBMVFMNCiAgICB4ODZfNjQgd2l0aCBLZXJuZWwg
Ni44LjAtOTAtZ2VuZXJpYw0KICAqIFVIRCA0LjkuMC4wK2RzMS0xfm5vYmxlMiBhbmQgR05V
IFJhZGlvIDMuMTAuMTIgc3RhY2sgaW5zdGFsbGVkIHZpYQ0KICAgIHRoZSBwcGE6Z251cmFk
aW8vZ251cmFkaW8tcmVsZWFzZXMgcmVwb3NpdG9yeQ0KICAqIE5JIGRyaXZlcnMgMjAyNSBR
NCBpbnN0YWxsZWQgYXMgZGVzY3JpYmVkIGhlcmU6DQogICAgaHR0cHM6Ly9maWxlcy5ldHR1
cy5jb20vbWFudWFsL3BhZ2VfdXNycF94M3gwLmh0bWwjeDN4MF9od19wY2llDQoNCg0KRG9l
cyBhbnlvbmUgaGF2ZSBleHBlcmllbmNlIHdpdGggdGhpcyBvbiBVYnVudHUgMjQuMDQgTFRT
IG9yIGFueSANCnN1Z2dlc3Rpb25zIGhvdyB0byBpZGVudGlmeSBhbmQgZml4IHRoZSBpc3N1
ZSB3b3VsZCBiZSB3ZWxjb21lIQ0KDQoNCkJlc3QgcmVnYXJkcw0KUGhpbGlwcA0KDQoNCg==

--------------AUQoHi1PtVObLpnPIaWLRxWw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Dear all,</p>
    <p>we are using the USRP X310 connected over MXI with a PCIe-8371
      card. This used to work well up to including Ubuntu 22.04 LTS. Now
      after updating to Ubuntu 24.04 LTS we are experiencing the
      connecting issue described in the following. I am aware that 10G
      Ethernet is the recommended alternative, but the PCIe connection
      is beneficial for us, as it allows to quickly switch between FPGA
      images for different applications on-the-fly without having to
      power cycling the X310 (remote operation). According to NI, RIO is
      fully supported on Ubuntu 24.04 LTS so it should work.</p>
    <p>Does anyone have experience with this on Ubuntu 24.04 LTS or any
      suggestions how to identify and fix the issue would be welcome!</p>=

    <p><br>
    </p>
    <p><b>Issue description:</b></p>
    <p>The USRP X310 is discoverable using "uhd_find_devices" and shows
      up correctly as resource RIO0. It's correctly enumerated in lspcie
      using niusrpriok drivers and the niusrpriopc service is running.
      However, everything beyond that does not work, i.e. any flowgraph
      fails. Even the "uhd_usrp_probe" fails with the following after a
      clean reboot:</p>
    <p><font face=3D"monospace">$ uhd_usrp_probe=C2=A0<br>
        [INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300;
        UHD_4.9.0.0+ds1-1~noble2<br>
        [INFO] [X300] X300 initialization sequence...<br>
        [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...<br>=

        [INFO] [X300] Using LVBITX bitfile
        /usr/share/uhd/4.9.0/images/usrp_x310_fpga_HG.lvbitx<br>
        Error: RuntimeError: x300_impl: Could not initialize RIO
        session. Unknown error. (Error code -63150)<br>
      </font></p>
    <p><font face=3D"monospace">$ uhd_usrp_probe=C2=A0<br>
        [INFO] [UHD] linux; GNU C++ version 13.3.0; Boost_108300;
        UHD_4.9.0.0+ds1-1~noble2<br>
        [INFO] [X300] X300 initialization sequence...<br>
        [INFO] [X300] Connecting to niusrpriorpc at localhost:5444...<br>=

        [INFO] [X300] Using LVBITX bitfile
        /usr/share/uhd/4.9.0/images/usrp_x310_fpga_HG.lvbitx<br>
        Error: RuntimeError: x300_impl: Could not initialize RIO
        session. A fault on the network caused the RPC operation to
        fail. (Error code -63042)</font></p>
    <p>And every subsequent try results in the same network fault error.<=
/p>
    <p><br>
    </p>
    <p><b>Setup:</b></p>
    <ul>
      <li>USRP X310 connected over MXI with a PCIe-8371 card. Ubuntu
        24.04 LTS x86_64 with Kernel 6.8.0-90-generic</li>
      <li>UHD 4.9.0.0+ds1-1~noble2 and GNU Radio 3.10.12 stack installed
        via the ppa:gnuradio/gnuradio-releases repository=C2=A0</li>
      <li>NI drivers 2025 Q4 installed as described here:=C2=A0<a class=3D=
"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual/page_usrp_=
x3x0.html#x3x0_hw_pcie">https://files.ettus.com/manual/page_usrp_x3x0.htm=
l#x3x0_hw_pcie</a></li>
    </ul>
    <p><br>
    </p>
    <p>Does anyone have experience with this on Ubuntu 24.04 LTS or any
      suggestions how to identify and fix the issue would be welcome!</p>=

    <p><br>
    </p>
    <p>Best regards<br>
      Philipp</p>
    <p><br>
    </p>
  </body>
</html>

--------------AUQoHi1PtVObLpnPIaWLRxWw--

--------------ms080003010200000700070708
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: Kryptografische S/MIME-Signatur

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCC
Dg4wggbmMIIEzqADAgECAhAxAnDUNb6bJJr4VtDh4oVJMA0GCSqGSIb3DQEBDAUAMIGIMQsw
CQYDVQQGEwJVUzETMBEGA1UECBMKTmV3IEplcnNleTEUMBIGA1UEBxMLSmVyc2V5IENpdHkx
HjAcBgNVBAoTFVRoZSBVU0VSVFJVU1QgTmV0d29yazEuMCwGA1UEAxMlVVNFUlRydXN0IFJT
QSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTAeFw0yMDAyMTgwMDAwMDBaFw0zMzA1MDEyMzU5
NTlaMEYxCzAJBgNVBAYTAk5MMRkwFwYDVQQKExBHRUFOVCBWZXJlbmlnaW5nMRwwGgYDVQQD
ExNHRUFOVCBQZXJzb25hbCBDQSA0MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA
s0riIl4nW+kEWxQENTIgFK600jFAxs1QwB6hRMqvnkphfy2Q3mKbM2otpELKlgE8/3AQPYBo
7p7yeORuPMnAuA+oMGRb2wbeSaLcZbpwXgfCvnKxmq97/kQkOFX706F9O7/h0yehHhDjUdyM
yT0zMs4AMBDRrAFn/b2vR3j0BSYgoQs16oSqadM3p+d0vvH/YrRMtOhkvGpLuzL8m+LTAQWv
QJ92NwCyKiHspoP4mLPJvVpEpDMnpDbRUQdftSpZzVKTNORvPrGPRLnJ0EEVCHR82LL6oz91
5WkrgeCY9ImuulBn4uVsd9ZpubCgM/EXvVBlViKqusChSsZEn7juIsGIiDyaIhhLsd3amm8B
S3bgK6AxdSMROND6hiHT182Lmf8C+gRHxQG9McvG35uUvRu8v7bPZiJRaT7ZC2f50P4lTlnb
LvWpXv5yv7hheO8bMXltiyLweLB+VNvg+GnfL6TW3Aq1yF1yrZAZzR4MbpjTWdEdSLKvz8+0
wCwscQ81nbDOwDt9vyZ+0eJXbRkWZiqScnwAg5/B1NUD4TrYlrI4n6zFp2pyYUOiuzP+as/A
Znz63GvjFK69WODR2W/TK4D7VikEMhg18vhuRf4hxnWZOy0vhfDR/g3aJbdsGac+diahjEwz
yB+UKJOCyzvecG8bZ/u/U8PsEMZg07iIPi8CAwEAAaOCAYswggGHMB8GA1UdIwQYMBaAFFN5
v1qqK0rPVIDh2JvAnfKyA2bLMB0GA1UdDgQWBBRpAKHHIVj44MUbILAK3adRvxPZ5DAOBgNV
HQ8BAf8EBAMCAYYwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHSUEFjAUBggrBgEFBQcDAgYI
KwYBBQUHAwQwOAYDVR0gBDEwLzAtBgRVHSAAMCUwIwYIKwYBBQUHAgEWF2h0dHBzOi8vc2Vj
dGlnby5jb20vQ1BTMFAGA1UdHwRJMEcwRaBDoEGGP2h0dHA6Ly9jcmwudXNlcnRydXN0LmNv
bS9VU0VSVHJ1c3RSU0FDZXJ0aWZpY2F0aW9uQXV0aG9yaXR5LmNybDB2BggrBgEFBQcBAQRq
MGgwPwYIKwYBBQUHMAKGM2h0dHA6Ly9jcnQudXNlcnRydXN0LmNvbS9VU0VSVHJ1c3RSU0FB
ZGRUcnVzdENBLmNydDAlBggrBgEFBQcwAYYZaHR0cDovL29jc3AudXNlcnRydXN0LmNvbTAN
BgkqhkiG9w0BAQwFAAOCAgEACgVOew2PHxM5AP1v7GLGw+3tF6rjAcx43D9Hl110Q+BABABg
lkrPkES/VyMZsfuds8fcDGvGE3o5UfjSno4sij0xdKut8zMazv8/4VMKPCA3EUS0tDUoL01u
gDdqwlyXuYizeXyH2ICAQfXMtS+raz7mf741CZvO50OxMUMxqljeRfVPDJQJNHOYi2pxuxgj
KDYx4hdZ9G2o+oLlHhu5+anMDkE8g0tffjRKn8I1D1BmrDdWR/IdbBOj6870abYvqys1qYlP
otv5N5dm+XxQ8vlrvY7+kfQaAYeO3rP1DM8BGdpEqyFVa+I0rpJPhaZkeWW7cImDQFerHW9b
KzBrCC815a3WrEhNpxh72ZJZNs1HYJ+29NTB6uu4NJjaMxpk+g2puNSm4b9uVjBbPO9V6sFS
G+IBqE9ckX/1XjzJtY8Grqoo4SiRb6zcHhp3mxj3oqWi8SKNohAOKnUc7RIP6ss1hqIFyv0x
XZor4N9tnzD0Fo0JDIURjDPEgo5WTdti/MdGTmKFQNqxyZuT9uSI2Xvhz8p+4pCYkiZqpahZ
lHqMFxdw9XRZQgrP+cgtOkWEaiNkRBbvtvLdp7MCL2OsQhQEdEbUvDM9slzZXdI7NjJokVBq
3O4pls3VD2z3L/bHVBe0rBERjyM2C/HSIh84rfmAqBgklzIOqXhd+4RzadUwggcgMIIFCKAD
AgECAhEA1ZBgQnSJuTR8cXVujp3b/jANBgkqhkiG9w0BAQwFADBGMQswCQYDVQQGEwJOTDEZ
MBcGA1UEChMQR0VBTlQgVmVyZW5pZ2luZzEcMBoGA1UEAxMTR0VBTlQgUGVyc29uYWwgQ0Eg
NDAeFw0yNDEyMDQwMDAwMDBaFw0yNjEyMDQyMzU5NTlaMIGaMQswCQYDVQQGEwJERTEPMA0G
A1UECBMGSGVzc2VuMTwwOgYDVQQKDDNHU0kgSGVsbWhvbHR6emVudHJ1bSBmw7xyIFNjaHdl
cmlvbmVuZm9yc2NodW5nIEdtYkgxFzAVBgNVBGETDk5UUkRFLUhSQiAxNTI4MSMwIQYJKoZI
hvcNAQkBFhRwLm5pZWRlcm1heWVyQGdzaS5kZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCC
AgoCggIBANGDDBss4T9z/SpIY6oS9mX7izIJnpzOXzoEoFewhzHFrG1zdKQXJkFkxGq9XHlg
j+Y9ObhPWHGDt5MeGv4l1eoAmPuhhRq4w4fz0jZqRecbX0Pt2/UIRIcvDB5vVY1aYUOaHx//
71wX3qKZiUuEmzCvz+9tG/yz61UUoCsJYSC+CwnnK69vDEjBJdZewhmY3d8yDBZQGsXmF2S+
RPuEyiN9ULe8F299mxX34bHfUxdqn3paCF2ujXD68ZVdkQk9yP/xlyWQWclBk1Yo9vk5MKD4
1DvUaV+S0Pk5/J4QThpRpkGcjItJkM3NzEsua+FjVh4oMlwSP7kbepGGaJ/kHXkxwpxRGiJk
/cwmRyI1X5PVvDGt0xaB3YNoM7cDiivBHS4jphb4ItB4Qp6guA8k2CpnFmro1y6nx6Y8rD+6
kEUjis/I+pvQB3Pxp+836lE6o9/czhgBEPmJdjloDb1rResEVK+ckifqHL1HGHrFlGUEkCFf
hQw7rXqyzACxfJJaTHYuvjxJUgb6VD5JHaWEp/4Rp8zKNvnrTDNXTZ8q+e0GaCTt0gcaIgOc
A6V4EeDUaW9yGIy40iReHVJkdx7/rZDTCZtcgeLhtdOTGuSHHuQpe3k1h2AVlsshvkbeZbjA
Q7tfyk1nwoOnWn1BJZ5uTjLeDeCw2aCeVUDT8tg3NX9HAgMBAAGjggGyMIIBrjAfBgNVHSME
GDAWgBRpAKHHIVj44MUbILAK3adRvxPZ5DAdBgNVHQ4EFgQUnBN5YxdPSwDFTa3cjKLNtyam
DBIwDgYDVR0PAQH/BAQDAgWgMAwGA1UdEwEB/wQCMAAwHQYDVR0lBBYwFAYIKwYBBQUHAwQG
CCsGAQUFBwMCMFAGA1UdIARJMEcwOgYMKwYBBAGyMQECAQoDMCowKAYIKwYBBQUHAgEWHGh0
dHBzOi8vc2VjdGlnby5jb20vU01JTUVDUFMwCQYHZ4EMAQUCAjBCBgNVHR8EOzA5MDegNaAz
hjFodHRwOi8vR0VBTlQuY3JsLnNlY3RpZ28uY29tL0dFQU5UUGVyc29uYWxDQTQuY3JsMHgG
CCsGAQUFBwEBBGwwajA9BggrBgEFBQcwAoYxaHR0cDovL0dFQU5ULmNydC5zZWN0aWdvLmNv
bS9HRUFOVFBlcnNvbmFsQ0E0LmNydDApBggrBgEFBQcwAYYdaHR0cDovL0dFQU5ULm9jc3Au
c2VjdGlnby5jb20wHwYDVR0RBBgwFoEUcC5uaWVkZXJtYXllckBnc2kuZGUwDQYJKoZIhvcN
AQEMBQADggIBAIBmQZxkYRM5fy00mOQpCOlJmxuyoRzFOo344Ti9xsX8OSrAqNU8Z9JZclxn
cTA6VoTPukOvz7VIAAFLWBzDtnIsrDmgRkwrRoTpY0Ln7pKcSbh+KlaK/tIJ9rXg2caUWFMg
DS/qqaGyU3RrqX7XZQvfqu9uo/em3lWmWwYkNR/9uUd5Hs9J/J3q6ZP8EFt7Yntcxs/2158s
n1jrHydVlqw9NXaqhXa9pAj2XkXNR12MiB80spjEinGrNtcZ2dURpi9pj5sfRYnVqrlNUNVn
SJ4aUouS1gxDeQcliKBWWFIt8vhG9Lharjj58ItUBH+z4O7ArZcvm+RANiqsBMMPoY1efS5H
mqNZq+f8YzJfnBUPqkTQjgAHtPbEsPGJBn7gyOIOkaYABOknHo1mlCX5fV5ZcBTBb7LwLc9a
N8dEbGC3ti9ulFcSriXO3PIpcLX2GlFYmIHENRZDnpFsHd8B+MJxO9EBDM3WMH2yhnaw3Pti
xO49gG8rp8wmIemaZ7py1kBHIW6s9XmDI7676zf8N8nWTJuL1hAJZ/yxiTWUlfENQJ9l8Y/E
ptLZsDNhyJxoOsPn991LQ3OBmjmHxMjOYv/QUef7j290qrqc+QfG3xnnwkIxKV4fFmq781MJ
9r+BBfqhMc/gTVyScDtktU3fj1HaLhfnJ8uxHOBPOOL9en2GMYIFSDCCBUQCAQEwWzBGMQsw
CQYDVQQGEwJOTDEZMBcGA1UEChMQR0VBTlQgVmVyZW5pZ2luZzEcMBoGA1UEAxMTR0VBTlQg
UGVyc29uYWwgQ0EgNAIRANWQYEJ0ibk0fHF1bo6d2/4wDQYJYIZIAWUDBAIDBQCgggK+MBgG
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI2MDExNTEzNDAyM1ow
TwYJKoZIhvcNAQkEMUIEQOHTKHQ0MPkXImwCnmk6IMn4TfeIUkqFnLrz8zrcDqP7fHjc+8yA
fxqh9jzDE6gC4u3SOTrfKNwJUnXzZut+YiQwagYJKwYBBAGCNxAEMV0wWzBGMQswCQYDVQQG
EwJOTDEZMBcGA1UEChMQR0VBTlQgVmVyZW5pZ2luZzEcMBoGA1UEAxMTR0VBTlQgUGVyc29u
YWwgQ0EgNAIRANWQYEJ0ibk0fHF1bo6d2/4wbAYLKoZIhvcNAQkQAgsxXaBbMEYxCzAJBgNV
BAYTAk5MMRkwFwYDVQQKExBHRUFOVCBWZXJlbmlnaW5nMRwwGgYDVQQDExNHRUFOVCBQZXJz
b25hbCBDQSA0AhEA1ZBgQnSJuTR8cXVujp3b/jCCAVcGCSqGSIb3DQEJDzGCAUgwggFEMAsG
CWCGSAFlAwQBKjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDQYIKoZIhvcNAwICAQUwDQYI
KoZIhvcNAwICAQUwBwYFKw4DAgcwDQYIKoZIhvcNAwICAQUwBwYFKw4DAhowCwYJYIZIAWUD
BAIBMAsGCWCGSAFlAwQCAjALBglghkgBZQMEAgMwCwYJYIZIAWUDBAIEMAsGCWCGSAFlAwQC
BzALBglghkgBZQMEAggwCwYJYIZIAWUDBAIJMAsGCWCGSAFlAwQCCjALBgkqhkiG9w0BAQEw
CwYJK4EFEIZIPwACMAgGBiuBBAELADAIBgYrgQQBCwEwCAYGK4EEAQsCMAgGBiuBBAELAzAL
BgkrgQUQhkg/AAMwCAYGK4EEAQ4AMAgGBiuBBAEOATAIBgYrgQQBDgIwCAYGK4EEAQ4DMA0G
CSqGSIb3DQEBAQUABIICAEA2E5d4jODU75XITmSIpxeWPUXFyVTSO/J2PB8A27FQA0rbG2x+
wsQ+o8z1jDGlYHWhNB+LUUpSGy+xmEy1PRJTuOcyomI5oOW5kXtNTnOowwKrJH4MAd4B5SHi
HCx3fTzBeAZXwvP4kx0a+XdiedxkhjdFMPH4uR8TH0XjeqSUwgrMPqpykTHtCT80it0EOuHN
HjogrfP221hSFfv4krW8kb1tcuVyEUnziFMEn6dZiJGQ6G5eFPCL4qV89Tgv7ufvfWc5Ov1M
0QRBSr86alXazlACHzU7lSb7k9ap6rHgTfkd+XMixiayz1LiHPHBWn75POtxvZ2oBgG6YRMD
pxjAQreWtqxFkI2mgabuIOPacE051kExz2ODYA1pyXh8BElhypd5U+UJFUfd6/amf4C6gIjg
A/F1XmToXU3gV4iBisQWrdv9NZoFcTr76x+Cf0a18J8xqQ+7se6FnsrolZlIACar8jMQb+5/
u42EnUShT+R6p7TTyVty2EKB/aGJOU1q9wT1S/INUd4z9X3cLf6cf2B36ogfpezTsUOqia/G
OY/qSR+qq5XWVvoGWC///Jx2TLuteBdSO92Wjhny2+RQdAF6jTm13b1bkz4YLb7Aost7dtlq
GD51KgOd1mxqcnUOdn5qTKaXtV+wC5HDcYfKxDzD+C1e8g33oHzvaGyfAAAAAAAA
--------------ms080003010200000700070708--

--===============0435918982684644231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0435918982684644231==--
