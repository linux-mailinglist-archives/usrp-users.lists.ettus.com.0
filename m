Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D33BFA2540F
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 09:16:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CA0173855D0
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 03:16:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738570579; bh=LnCAkvkLq6MjEVxO9Fx1WHiBmgpsyLm9JA1BXM3lT8c=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hhEMiLgtPfWNqxu8SSr1ObIC0+HotUFdk6yVF1DgLIpCKPWPCI71snVijyyk59038
	 Cl9OgEomQl5Q1gR7LGyTZK1j+Dim+TuuRb26Ai/dsGukm79TMhwB+l7vbrPfmgZ327
	 Q+XrrybAS58TEafCx8qRXnXSeox0ICRAtKFpjuuooIwODgzeV0raXwWNagy+WyW7GJ
	 SLCcHAO/UQZjkzOI7zzM8dnfBYeYrzaxqEV3yR0j8gzgcgEvq0uiUJy0rv/+EZ7sFe
	 5BQWJ6sN9FwqT1OfkSHdOsVJg5bfxTWTHmuo7CZoP7JEfSyUOQ4r8OP47RDZhIWr9m
	 C7MGJSczhtNzg==
Received: from lxmtout2.gsi.de (lxmtout2.gsi.de [140.181.3.112])
	by mm2.emwd.com (Postfix) with ESMTPS id 3FBBF385604
	for <usrp-users@lists.ettus.com>; Mon,  3 Feb 2025 03:15:21 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout2.gsi.de (Postfix) with ESMTP id 8915B20350E6;
	Mon,  3 Feb 2025 09:15:19 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at lxmtout2.gsi.de
Received: from lxmtout2.gsi.de ([127.0.0.1])
	by localhost (lxmtout2.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id SSliA6djI0cr; Mon,  3 Feb 2025 09:15:19 +0100 (CET)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout2.gsi.de (Postfix) with ESMTPS id 76E4F20350E1;
	Mon,  3 Feb 2025 09:15:19 +0100 (CET)
Received: from [140.181.69.163] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Mon, 3 Feb
 2025 09:15:19 +0100
Message-ID: <cf99ea0c-7fbd-4927-9f02-1975e7ff5ee5@gsi.de>
Date: Mon, 3 Feb 2025 09:15:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: <meni.dali@sabra-microsystems.com>
References: <uPJVlX7IHGuwmncsHhYjvUFCYLcT1mpqRxKLNKr3fo@lists.ettus.com>
Content-Language: de-DE, en-GB
From: Philipp Niedermayer <p.niedermayer@gsi.de>
In-Reply-To: <uPJVlX7IHGuwmncsHhYjvUFCYLcT1mpqRxKLNKr3fo@lists.ettus.com>
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvex5.Campus.gsi.de (10.10.4.95) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: RRHFRYK7QLRXAUQTX2TOGHLCCWNMQG3M
X-Message-ID-Hash: RRHFRYK7QLRXAUQTX2TOGHLCCWNMQG3M
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Front Panel GPIO to RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RRHFRYK7QLRXAUQTX2TOGHLCCWNMQG3M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0309839554519120036=="

--===============0309839554519120036==
Content-Language: de-DE, en-GB
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms020606010505030502080607"

--------------ms020606010505030502080607
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCnRoaXMgaXMgY3VycmVudGx5IG5vdCBwb3NzaWJsZSB3aXRob3V0IGNoYW5naW5n
IHRoZSBVSEQgY29yZSBtYW51YWxseSANCmFuZCByZS1yb3V0aW5nIHRob3NlIEdQSU8gbGlu
ZXMgaW4gdGhlIFZlcmlsb2cgY29yZSBjb2RlLiBTb21lIHllYXJzIGFnbyANCkkgb3BlbmVk
IGEgZmVhdHVyZSByZXF1ZXN0LCBpdCBjb250YWlucyBzb21lIGhpbnRzIG9uIHdoYXQgb3Ro
ZXJzIHRyaWVkIA0KYW5kIHdoYXQgd291bGQgYmUgcmVxdWlyZWQuIFVuZm9ydHVuYXRlbHks
IEkgbmV2ZXIgZ290IGFuIGFuc3dlci4NCg0KV291bGQgYmUgd29uZGVyZnVsIGlmIHlvdSBj
b3VsZCBzdXBwb3J0IHRoYXQgYnkgdm90aW5nIG9uIHRoZSBpc3N1ZSBhbmQgDQpleHByZXNz
IHlvdXIgaW50ZXJlc3QgdGhlcmUuIE9yIGlmIHlvdSBtYW5hZ2UgdG8gZ2V0IGl0IHdvcmtp
bmcsIHNoYXJlIA0KeW91ciBzb2x1dGlvbiB3aXRoIGEgUFIuDQoNCkhlcmUgaXMgdGhlIGxp
bms6IGh0dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL3VoZC9pc3N1ZXMvNjY2DQoN
CkJlc3QgcmVnYXJkcw0KUGhpbGlwcA0KDQoNCkFtIDMuMi4yNSB1bSA5OjAwIHNjaHJpZWIg
bWVuaS5kYWxpQHNhYnJhLW1pY3Jvc3lzdGVtcy5jb206DQo+DQo+IEhlbGxvLA0KPg0KPiBJ
IG5lZWQgdG8gZXN0YWJsaXNoIGRpcmVjdCByb3V0aW5nIGJldHdlZW4gdGhlIFVTUlAgWDQx
MCdzIGZyb250IHBhbmVsIA0KPiBHUElPIHBpbnMgYW5kIGN1c3RvbSBSRk5vQyBibG9ja3Mu
DQo+DQo+IFNwZWNpZmljYWxseSwgSSB3YW50IHRvIHJlYWQgdGhlIEdQSU8gc2lnbmFscyBk
aXJlY3RseSBpbnRvIG15IFJGTm9DIA0KPiBibG9jay4NCj4NCj4gRG9lcyBhbnlvbmUgaGF2
ZSBleHBlcmllbmNlIGltcGxlbWVudGluZyBzdWNoIGRpcmVjdCBHUElPLXRvLVJGTm9DIA0K
PiBjb25uZWN0aW9uIG9uIHRoZSBYNDEwPw0KPg0KPiBBbnkgZXhhbXBsZXMgb3IgdGVjaG5p
Y2FsIGRvY3VtZW50YXRpb24gd291bGQgYmUgaGVscGZ1bC4NCj4NCj4gVGhhbmtzDQo+DQo+
DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+
IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
DQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20NCg==

--------------ms020606010505030502080607
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
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI1MDIwMzA4MTUxOVow
TwYJKoZIhvcNAQkEMUIEQNfSz1aZLruWcKVLJengkn+ephoqj1+8a109jLzpXZ+odK38f5xt
M498TE3v+0864Zc+7Q0H7pg9MJWKdU5DlfcwagYJKwYBBAGCNxAEMV0wWzBGMQswCQYDVQQG
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
CSqGSIb3DQEBAQUABIICAJI9/cTLTBkm9nfySxx3YimQHvmTgtys+aFESMhkggYWOFDTJB9U
AEsnuoYHpIQarECz+DhPMr4NO91Ulcb1aXh+qAZwLK4sMmhcntlazY9ERI0GYeTupI7mP6iN
ZKNghPWcgLP3rbsOQcubsPP/c5DTJsqugueLu8VztBY6WKzN4BTcSYF33ctyP4odehGzVJrQ
+WYpGL1ol59LGwliHS9S8pKHcaUYA8M8YiQ3zr4CVVz3FzwOE1v+AZXZWYeZRod9Tf+POFHX
HPZKHbseK9/c2HcepDm6R0sg+REABf5ON9NFoIQBFNMyUyofC+FzlUbbN+aj0HOhjgK06FN3
XYr5u18uALEYxJtXbS5kO3t/yU70Vm/x7hp0L/xDQva5aU1EC2zRjlkc6dvBu1Hz0nJ+ygIR
MmH0YVxUvdhlhhCyv7UkQhYrLzenGYNsyfvLHRL7Y/0rEclTjpPm0rFkvAofE9SlZQq1Jqe+
9kST8LciB71wKpTIBX2hqdpfxRZd753emCgZo2CNeTtvLaWete4mV6WVZYa4AVmNYDqt6PYv
A4GolfANPKu6Z7xmKNS/ZZKKTmn9/xUjWFVJH6/jRPgLwEvKd+s1vLvIPZzfxvJErZhq2dbi
aDDuAYkCPSGO3ZwyAXZx1FrmAoo38wA0Psv84d671mZ73779Jt8fj7mvAAAAAAAA
--------------ms020606010505030502080607--

--===============0309839554519120036==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0309839554519120036==--
