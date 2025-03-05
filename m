Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F65FA50206
	for <lists+usrp-users@lfdr.de>; Wed,  5 Mar 2025 15:32:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0866385B9A
	for <lists+usrp-users@lfdr.de>; Wed,  5 Mar 2025 09:32:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741185165; bh=ByBu3y1wH3KeP+LaXitwtclGvHPIX77N1Hq/UwhjEn4=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=kcUsN/eEXE5soCf2ZI1IOxrSSr8n/uWf2lhQxn0cCUg0WO8ESYqyLqvxFSeLF7QHg
	 GFE9f7aL11Q90Zp6hL0OyjErMOExK0H/9wS77NYcMhfHJ7SZcWG+HeVKmPfZZRb6Oq
	 jvBldT2C8sU9PYeTvvLh7zVh2ilTuiZUUzUu9MwESTb8r3FYDKpyyQFikyyAMJmmcf
	 83LtX+yIcDg7hWldeHmyBDBoAHCT5BIFiNCWAlMsVY979ohxM/oIIrlwNdNZ1Ndx2x
	 ooPQTdRcBI73OZufGXu95bTdcWo9Ehe3rd4+RWsRMT24FP/cDACGHM1NAaQAVGiDL+
	 CP5YA/qE1bqDg==
Received: from lxmtout1.gsi.de (lxmtout1.gsi.de [140.181.3.111])
	by mm2.emwd.com (Postfix) with ESMTPS id DC5B7385B57
	for <usrp-users@lists.ettus.com>; Wed,  5 Mar 2025 09:32:15 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout1.gsi.de (Postfix) with ESMTP id 3C5132051044;
	Wed,  5 Mar 2025 15:32:14 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at lxmtout1.gsi.de
Received: from lxmtout1.gsi.de ([127.0.0.1])
	by localhost (lxmtout1.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 6frP07vOJDjk; Wed,  5 Mar 2025 15:32:14 +0100 (CET)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout1.gsi.de (Postfix) with ESMTPS id 1E2EE2051040;
	Wed,  5 Mar 2025 15:32:14 +0100 (CET)
Received: from [140.181.69.163] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Wed, 5 Mar
 2025 15:32:13 +0100
Message-ID: <7a236078-fffa-4ed6-a85d-f26c2180e62c@gsi.de>
Date: Wed, 5 Mar 2025 15:32:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: <yangamelia2333@gmail.com>
References: <OeUulMx5M7plIog6vT8gCEmw5bsKRqfdg3QOAkZuU@lists.ettus.com>
From: Philipp Niedermayer <p.niedermayer@gsi.de>
Content-Language: de-DE, en-GB
In-Reply-To: <OeUulMx5M7plIog6vT8gCEmw5bsKRqfdg3QOAkZuU@lists.ettus.com>
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvex5.Campus.gsi.de (10.10.4.95) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: M4MNYR7SSN2SCMELATK3G2AOW6ICWNEN
X-Message-ID-Hash: M4MNYR7SSN2SCMELATK3G2AOW6ICWNEN
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com, meni.dali@sabra-microsystems.com, mgannet@gmail.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Control GPIO pins in a custom RFNoC block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M4MNYR7SSN2SCMELATK3G2AOW6ICWNEN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5817313660235915250=="

--===============5817313660235915250==
Content-Language: de-DE, en-GB
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms050802080602000202040700"

--------------ms050802080602000202040700
Content-Type: multipart/alternative;
 boundary="------------2WXImc5P0g0isOxMhMeDouuz"

--------------2WXImc5P0g0isOxMhMeDouuz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNCkkgZmluYWxseSBoYWQgdG8gZ28gdGhyb3VnaCB0aGUgR1BJTyB0aGluZyBmb3Ig
YSBwcm9qZWN0IHdoZXJlIEkgbmVlZCANCmFjY2VzcyB0byBzb21lIG9mIHRoZSBEYXVnaHRl
cmJvYXJkIEdQSU9zIG9uIGFuIFgzMTAgZnJvbSBhIGN1c3RvbSBSRk5vQyANCmJsb2NrLiBU
aGUgYXBwbGljYXRpb24gYWxzbyBpbmNsdWRlcyB1c2luZyBhIHNwYXJlIGJpdCBvZiB0aGUg
ZGF0YSANCnN0cmVhbSB0byBzZW5kIHRoZSBHUElPIHN0YXRlIHRvIHRoZSBob3N0IGFsb25n
IHRoZSByZWd1bGFyIHN0cmVhbSBvZiANCnNhbXBsZXMuDQoNClNpbmNlIHRoZXJlIHdlcmUg
cXVpdGUgYSBmZXcgcmVxdWVzdHMgb24gdGhlIG1haWxpbmcgbGlzdCBpbiB0aGlzIA0KcmVn
YXJkLCBJIHB1c2hlZCB0aGUgY2hhbmdlcyBJIGhhZCB0byBtYWtlIHRvIFVIRCBhbG9uZyB3
aXRoIGEgDQpkZXNjcmlwdGlvbiBvZiB0aGUgYWN0aW9ucyBJIHRvb2sgaW4gbXkgY3VzdG9t
IFJGTm9DIGJsb2NrIHRvIG15IEdpdEh1YiANCmFjY291bnQuDQpZb3UgY2FuIGZpbmQgaXQg
aGVyZTogaHR0cHM6Ly9naXRodWIuY29tL2VsdG9zL3VoZC9wdWxsLzENCg0KSSBpbnRyb2R1
Y2VkIGEgc3BlY2lhbCBjb250cm9sIHJlZ2lzdGVyIHRvIHRha2UgY29udHJvbCBvdmVyIGNl
cnRhaW4gDQpwaW5zIGZyb20gd2l0aGluIG15IFJGTm9DIGJsb2NrIHdoaWxlIGxlYXZpbmcg
dGhlIG90aGVyIHBpbnMgdW5kZXIgDQpjb250cm9sIG9mIHRoZSBkZWZhdWx0IFVIRCBBUEkg
b3IgQVRSLg0KDQpCZXN0DQpQaGlsaXBwDQoNCg0KKkZyb206KiB5YW5nYW1lbGlhMjMzM0Bn
bWFpbC5jb20NCg0KKlNlbnQ6KiBUdWVzZGF5LCA0IEp1bHkgMjAyMyBhdCAwNDoyMw0KDQoq
VG86KiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KDQoqU3ViamVjdDoqIFtVU1JQLXVz
ZXJzXSBDb250cm9sIEdQSU8gcGlucyBpbiBhIGN1c3RvbSBSRk5vQyBibG9jaw0KDQoNCj4g
SGVsbG8uDQo+DQo+IEkgd2FudCB0byBjb250cm9sIEdQSU8gcGlucyBpbiBhIGN1c3RvbSBS
Rk5vQyBibG9jayB0byBzZW5kIGEgc3RhYmxlIA0KPiBHUGxPIHRyaWdnZXIgb3V0cHV0IChY
MzEwK1VIRDQuNCArIFVidW50dSAxOC4wNCkuIEJ1dCBJIGhhdmUgbm8gaWRlYSANCj4gaG93
IHRvIGltcGxlbWVudCB0aGlzIGJlY2F1c2UgbCBkaWRuJ3QgZmluZCB0aGUgR1BJTyBpbnRl
cmZhY2UgaW4gdGhlIA0KPiBSRk5vQyBzcGVjaWZpY2F0aW9uLg0KPg0KPiBBbHNvIEkgZG9u
J3Qgd2FudCB0byB1c2UgdGhlIHxyZm5vYy5yYWRpb19jb250cm9sLnNldF9ncGlvX2F0dHIo
KXwgDQo+IGNvbW1hbmQuIER1ZSB0byB0aGUgaG9zdCdzIHVuY2VydGFpbiBkZWxheSwgdGhl
IG91dHB1dCB0cmlnZ2VyaW5nIA0KPiBpbnRlcnZhbCBtYXkgZGlmZmVyLg0KPg0KPiBJIHJl
YWxseSBob3BlIHNvbWVvbmUgY2FuIGhlbHAgbWUgYW5kIGdpdmUgbWUgc29tZSBoaW50cw0K
Pg0KPiBBbWVsaWENCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS11c3JwLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvdXNy
cC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCg==
--------------2WXImc5P0g0isOxMhMeDouuz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi,</p>
    <p>I finally had to go through the GPIO thing for a project where I
      need access to some of the Daughterboard GPIOs on an X310 from a
      custom RFNoC block. The application also includes using a spare
      bit of the data stream to send the GPIO state to the host along
      the regular stream of samples.<br>
    </p>
    <p>Since there were quite a few requests on the mailing list in this
      regard, I pushed the changes I had to make to UHD along with a
      description of the actions I took in my custom RFNoC block to my
      GitHub account.<br>
      You can find it here: <a
        href=3D"https://github.com/eltos/uhd/pull/1"
        class=3D"moz-txt-link-freetext">https://github.com/eltos/uhd/pull=
/1</a></p>
    <p>I introduced a special control register to take control over
      certain pins from within my RFNoC block while leaving the other
      pins under control of the default UHD API or ATR.<br>
    </p>
    <p>Best<br>
      Philipp</p>
    <p></p>
    <div class=3D"moz-cite-prefix"><br>
      <div id=3D"rwhHeaders"
style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm=
 0cm;width:100%">
        <p style=3D"margin:0cm"><span><b>From:</b>
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yangamel=
ia2333@gmail.com">yangamelia2333@gmail.com</a></span></p>
        <p style=3D"margin:0cm"><span><b>Sent:</b> Tuesday, 4 July 2023 a=
t
            04:23</span></p>
        <p style=3D"margin:0cm"><span><b>To:</b>
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a></span></p>
        <p style=3D"margin:0cm"><span><b>Subject:</b> [USRP-users] Contro=
l
            GPIO pins in a custom RFNoC block</span></p>
      </div>
      <br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:OeUulMx5M7plIog6vT8gCEmw5bsKRqfdg3QOAkZuU@lists.ettus.com"
style=3D"border:none !important; padding-left:0px !important; margin-left=
:0px !important;">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello.</p>
      <p class=3D"">I want to control GPIO pins in a custom RFNoC block t=
o
        send a stable GPlO trigger output (X310+UHD4.4 + Ubuntu 18.04).
        But I have no idea how to implement this because l didn't find
        the GPIO interface in the RFNoC specification.</p>
      <p>Also I don't want to use the <code>rfnoc.radio_control.set_gpio_=
attr()</code>
        command. Due to the host's uncertain delay, the output
        triggering interval may differ.</p>
      <p>I really hope someone can help me and give me some hints</p>
      <p>Amelia</p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------2WXImc5P0g0isOxMhMeDouuz--

--------------ms050802080602000202040700
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
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI1MDMwNTE0MzIxM1ow
TwYJKoZIhvcNAQkEMUIEQDFH4XBnNs0xWjd0KnbidaNh/kOFZrp470qUiSe9tPWuHws7mwzm
psG9WK8eNe9RgGyoZs0k4MNJAjtnYN5EPzgwagYJKwYBBAGCNxAEMV0wWzBGMQswCQYDVQQG
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
CSqGSIb3DQEBAQUABIICAKuY0F7U5XmMsHT2bpYsaGAseGz+ERDiq3tAXZTBAFSfrxuXmg/f
xfO+4roqWSOkLJ1SbH6YVPe6dGAAAnfk6oVEbkXV7Stf9LVRWPQHq5j4dnmhKt94V32EpvMD
fpQ8h89EYDp15NdaAkNIGo7B+qWkSGUVCB6kfeMmFBNtMKgcqMh6aEXoi1WegDKQXOT7pQ2e
KMfy9wcX+3Fgml2v6DelGGt6dM7oiHE+BVmRw8gt7U6Zraph0tcYam0Cck19/uhOM6rlI6Wq
WNGofDldjm+erfpaRLsQUVQ2qIw9gLWMddO7R0vW1NfPtcraRZr1f+lYzipQl8liQJ5wYijZ
Yc/06OWlSJVrqAKtB1mhMyb1FVXVDUBiBDMmLKoSV0ZXPQbDDmfuYjIGpHOijMapdeIWdF0N
if7kRhEj+dmsPKn7VRR+du2f0bF0nzfWXk1Jvqpu1PJGIInSvz2ZowttPaHMWjbZ3+YLvewB
diluS1cq16r2LtUfhURhOCUJAuVCFBXHu50otOB5H93CWKVTO2Y1UzpE4KfdLf6IasgtCYBH
uYAOS0gWU17VQu1n4FCkqqGd2aQFQkLPpqtRi+d1UgEwdzFdhDQfNQSJE+HmA6co5BRh2aek
k6PuTXhcnkOEJS0ZxpdQl31f7U+qFjBBX7WMEW3lyr47qXeP2/EGsRxLAAAAAAAA
--------------ms050802080602000202040700--

--===============5817313660235915250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5817313660235915250==--
