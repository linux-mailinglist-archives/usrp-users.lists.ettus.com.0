Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D02B400C9
	for <lists+usrp-users@lfdr.de>; Tue,  2 Sep 2025 14:36:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44776384209
	for <lists+usrp-users@lfdr.de>; Tue,  2 Sep 2025 08:36:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1756816596; bh=SHThpMIk09wXlg8p1y8tN4c/XC06if+VkQvYBnb0DGc=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=W2QqmUv+Ww4qp9cB67bNpllTX0htutEmLNglf5kvnxTxEWoK3+HrtcFpXKa5nIhRw
	 a6WMNZsIpj8q9b9ivXRJihntBbSpEjfTQpq9f2fVIANhNLX4T2wxhl5nU9OVJ4BRqc
	 OADWpsZbQ7lmotvxXwAY/xmXJ5L6K09HAwLpIMo2BnL2CYp5OTCq1vb54q5xxBkDLi
	 rI0OchRI53pr43kIAm4stTN1DCJyXRckY+RxhQlun6CUXzdNQG+7YnkXbwAzRgDSdl
	 053tZ1aWM+uqL/EuIeo3eCdDH0PbtVjg7Vm+TZaHK9CT5hmEdGTG+2iKmRrKdu6lYT
	 MxnxHIb2BLZSQ==
Received: from lxmtout1.gsi.de (lxmtout1.gsi.de [140.181.3.111])
	by mm2.emwd.com (Postfix) with ESMTPS id 497D6383CF2
	for <usrp-users@lists.ettus.com>; Tue,  2 Sep 2025 08:36:20 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout1.gsi.de (Postfix) with ESMTP id D8F8E2051043;
	Tue,  2 Sep 2025 14:36:18 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at lxmtout1.gsi.de
Received: from lxmtout1.gsi.de ([127.0.0.1])
	by localhost (lxmtout1.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id i-ExKi2IJK4g; Tue,  2 Sep 2025 14:36:18 +0200 (CEST)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout1.gsi.de (Postfix) with ESMTPS id BAE212051040;
	Tue,  2 Sep 2025 14:36:18 +0200 (CEST)
Received: from [140.181.69.163] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.36; Tue, 2 Sep
 2025 14:36:18 +0200
Message-ID: <ba488011-62a1-4b85-bb54-5355d106ca5f@gsi.de>
Date: Tue, 2 Sep 2025 14:36:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: <ravi.paswan@vvdntech.in>
References: <CAPP35V_R40Cfwn=jRhO60mc7Rf=3v1J3JtW2sPVDhx=NF9S9JQ@mail.gmail.com>
 <fca57014-81ba-4284-b3ea-f9a61d1f123e@gmail.com>
From: Philipp Niedermayer <p.niedermayer@gsi.de>
Content-Language: de-DE, en-GB
In-Reply-To: <fca57014-81ba-4284-b3ea-f9a61d1f123e@gmail.com>
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvEX6.Campus.gsi.de (10.10.4.96) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: BIUMPBQI3ONT4BNX6QUZY4IQBIU5IDTE
X-Message-ID-Hash: BIUMPBQI3ONT4BNX6QUZY4IQBIU5IDTE
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?Re=3A_Visualization_of_USRP_Signals_in_C++_Application_=E2=80=93_Best_Practices=3F?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BIUMPBQI3ONT4BNX6QUZY4IQBIU5IDTE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6670170663089711290=="

--===============6670170663089711290==
Content-Language: de-DE, en-GB
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms050102080408090903050201"

--------------ms050102080408090903050201
Content-Type: multipart/alternative;
 boundary="------------9090RwwXHFANP7uzIzp3u3Pu"

--------------9090RwwXHFANP7uzIzp3u3Pu
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PiBJIHVuZGVyc3RhbmQgdGhhdCBVSEQgYWxsb3dzIG9ubHkgb25lIGFwcGxpY2F0aW9uIHRv
IGFjY2VzcyB0aGUgVVNSUCANCj4gZGV2aWNlIGF0IGEgdGltZSwgc28gcnVubmluZyBhIHNl
cGFyYXRlIFB5dGhvbi9HTlUgUmFkaW8gYXBwbGljYXRpb24gDQo+IGZvciB2aXN1YWxpemF0
aW9uIGNvbmN1cnJlbnRseSBpcyBub3QgYW4gb3B0aW9uIGZvciBtZQ0KWW91IGNhbiBzdHJl
YW0gdGhlIGRhdGEgZnJvbSB5b3VyIEMrKyBwcm9ncmFtIHRvIGEgc2VwYXJhdGUgR05VIFJh
ZGlvIA0KaW5zdGFuY2UgdXNpbmcgWk1RLCBzZWUgDQpodHRwczovL3dpa2kuZ251cmFkaW8u
b3JnL2luZGV4LnBocC9VbmRlcnN0YW5kaW5nX1pNUV9CbG9ja3MNCg0KDQoNCipGcm9tOiog
TWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVuQGdtYWlsLmNvbT4NCg0KKlNlbnQ6KiBU
dWVzZGF5LCAyIFNlcHRlbWJlciAyMDI1IGF0IDE0OjAxDQoNCipUbzoqIHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tDQoNCipTdWJqZWN0OiogW1VTUlAtdXNlcnNdIFJlOiBWaXN1YWxp
emF0aW9uIG9mIFVTUlAgU2lnbmFscyBpbiBDKysgDQpBcHBsaWNhdGlvbiDigJMgQmVzdCBQ
cmFjdGljZXM/DQoNCg0KPiBPbiAyMDI1LTA5LTAyIDAzOjMzLCBSYXZpIFBhc3dhbiB2aWEg
VVNSUC11c2VycyB3cm90ZToNCj4+DQo+PiBEZWFyIFVTUlAgQ29tbXVuaXR5LA0KPj4NCj4+
IEnigJltIGN1cnJlbnRseSB3b3JraW5nIG9uIGEgcHJvamVjdCB1c2luZyBhICpzaW5nbGUg
VVNSUCBkZXZpY2UqIGFuZCANCj4+IHByb2dyYW1taW5nIGl0IGluICpDKysgdmlhIHRoZSBV
SEQgQVBJKi4gTXkgZ29hbCBpcyB0byAqcmVjZWl2ZSANCj4+IGJhc2ViYW5kIHNhbXBsZXMg
YW5kIHZpc3VhbGl6ZSB0aGVtKiAodGltZSBkb21haW4sIHNwZWN0cnVtLCBldGMuKSBpbiAN
Cj4+IHJlYWwgdGltZSBvciBuZWFyLXJlYWwgdGltZS4NCj4+DQo+PiBJIHVuZGVyc3RhbmQg
dGhhdCBVSEQgYWxsb3dzIG9ubHkgb25lIGFwcGxpY2F0aW9uIHRvIGFjY2VzcyB0aGUgVVNS
UCANCj4+IGRldmljZSBhdCBhIHRpbWUsIHNvIHJ1bm5pbmcgYSBzZXBhcmF0ZSBQeXRob24v
R05VIFJhZGlvIGFwcGxpY2F0aW9uIA0KPj4gZm9yIHZpc3VhbGl6YXRpb24gY29uY3VycmVu
dGx5IGlzIG5vdCBhbiBvcHRpb24gZm9yIG1lLg0KPj4NCj4+IEnigJlkIGFwcHJlY2lhdGUg
YW55IGFkdmljZSBvciBiZXN0IHByYWN0aWNlcyBvbiB0aGUgZm9sbG93aW5nOg0KPj4NCj4+
IDEuDQo+Pg0KPj4gICAgICpXaGF0IGFyZSB0aGUgcmVjb21tZW5kZWQgYXBwcm9hY2hlcyBm
b3IgdmlzdWFsaXppbmcgc2lnbmFscw0KPj4gICAgIGRpcmVjdGx5IHdpdGhpbiBhIEMrKyBh
cHBsaWNhdGlvbiogdGhhdCBpbnRlcmFjdHMgd2l0aCB0aGUgVVNSUD8NCj4+DQo+PiAyLg0K
Pj4NCj4+ICAgICBIYXMgYW55b25lIHN1Y2Nlc3NmdWxseSB1c2VkIEMrKyBHVUkgbGlicmFy
aWVzIGxpa2UgKlF0DQo+PiAgICAgKFFDdXN0b21QbG90L1F3dCkqIG9yICpEZWFyIEltR3Vp
ICsgSW1QbG90KiBmb3IgcmVhbC10aW1lIHNpZ25hbA0KPj4gICAgIHBsb3R0aW5nPw0KPj4N
Cj4+IDMuDQo+Pg0KPj4gICAgIEFyZSB0aGVyZSBhbnkgZXhhbXBsZXMgb3Igb3Blbi1zb3Vy
Y2UgcHJvamVjdHMgZGVtb25zdHJhdGluZw0KPj4gICAgIHNpZ25hbCBhY3F1aXNpdGlvbiBm
cm9tIFVIRCBhbmQgcmVhbC10aW1lIHZpc3VhbGl6YXRpb24gaW4gQysrPw0KPj4NCj4+IDQu
DQo+Pg0KPj4gICAgIFdvdWxkIGl0IGJlIGJldHRlciB0byBsb2cgdGhlIGRhdGEgdG8gZGlz
ayBpbiBDKysgYW5kIHZpc3VhbGl6ZQ0KPj4gICAgIGl0IHNlcGFyYXRlbHkgcG9zdC1jYXB0
dXJlIChlLmcuLCBpbiBQeXRob24pLCBlc3BlY2lhbGx5IGZvcg0KPj4gICAgIGRlYnVnZ2lu
Zz8NCj4+DQo+PiBBbnkgaW5zaWdodHMsIHNoYXJlZCBleHBlcmllbmNlcywgb3IgZXhhbXBs
ZSBjb2RlIHdvdWxkIGJlIGdyZWF0bHkgDQo+PiBhcHByZWNpYXRlZC4NCj4+DQo+PiBCZXN0
IHJlZ2FyZHMsDQo+PiAqUmF2aSBQYXN3YW4qDQo+Pg0KPj4NCj4gVGhpcyBpcyBhbGwgdmVy
eSBtdWNoIHRoZSBkb21haW4gb2YgR251IFJhZGlvLCB3aGljaCB5b3Ugc2hvdWxkIA0KPiBk
ZWZpbml0ZWx5IGxvb2sgaW50by4NCj4NCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS11c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCg==
--------------9090RwwXHFANP7uzIzp3u3Pu
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>
      <blockquote type=3D"cite">I understand that UHD allows only one
        application to access the USRP device at a time, so running a
        separate Python/GNU Radio application for visualization
        concurrently is not an option for me</blockquote>
      You can stream the data from your C++ program to a separate GNU
      Radio instance using ZMQ, see
      <a class=3D"moz-txt-link-freetext" href=3D"https://wiki.gnuradio.or=
g/index.php/Understanding_ZMQ_Blocks">https://wiki.gnuradio.org/index.php=
/Understanding_ZMQ_Blocks</a></p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix"><br>
      <div id=3D"rwhHeaders"
style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm=
 0cm;width:100%">
        <p style=3D"margin:0cm"><span><b>From:</b> Marcus D. Leech
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbra=
un@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a></span></p>
        <p style=3D"margin:0cm"><span><b>Sent:</b> Tuesday, 2 September
            2025 at 14:01</span></p>
        <p style=3D"margin:0cm"><span><b>To:</b>
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-use=
rs@lists.ettus.com">usrp-users@lists.ettus.com</a></span></p>
        <p style=3D"margin:0cm"><span><b>Subject:</b> [USRP-users] Re:
            Visualization of USRP Signals in C++ Application =E2=80=93 Be=
st
            Practices?</span></p>
      </div>
      <br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:fca57014-81ba-4284-b3ea-f9a61d1f123e@gmail.com"
style=3D"border:none !important; padding-left:0px !important; margin-left=
:0px !important;">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"moz-cite-prefix">On 2025-09-02 03:33, Ravi Paswan via=

        USRP-users wrote:<br>
      </div>
      <blockquote type=3D"cite"
cite=3D"mid:CAPP35V_R40Cfwn=3DjRhO60mc7Rf=3D3v1J3JtW2sPVDhx=3DNF9S9JQ@mai=
l.gmail.com">
        <div dir=3D"ltr">
          <p>Dear USRP Community,</p>
          <p>I=E2=80=99m currently working on a project using a <strong>s=
ingle
              USRP device</strong> and programming it in <strong>C++
              via the UHD API</strong>. My goal is to <strong>receive
              baseband samples and visualize them</strong> (time domain,
            spectrum, etc.) in real time or near-real time.</p>
          <p>I understand that UHD allows only one application to access
            the USRP device at a time, so running a separate Python/GNU
            Radio application for visualization concurrently is not an
            option for me.</p>
          <p>I=E2=80=99d appreciate any advice or best practices on the
            following:</p>
          <ol>
            <li>
              <p><strong>What are the recommended approaches for
                  visualizing signals directly within a C++ application</=
strong>
                that interacts with the USRP?</p>
            </li>
            <li>
              <p>Has anyone successfully used C++ GUI libraries like <str=
ong>Qt
                  (QCustomPlot/Qwt)</strong> or <strong>Dear ImGui +
                  ImPlot</strong> for real-time signal plotting?</p>
            </li>
            <li>
              <p>Are there any examples or open-source projects
                demonstrating signal acquisition from UHD and real-time
                visualization in C++?</p>
            </li>
            <li>
              <p>Would it be better to log the data to disk in C++ and
                visualize it separately post-capture (e.g., in Python),
                especially for debugging?</p>
            </li>
          </ol>
          <p>Any insights, shared experiences, or example code would be
            greatly appreciated.</p>
          <p>Best regards,<br>
            <b>Ravi Paswan</b></p>
        </div>
        <br>
      </blockquote>
      This is all very much the domain of Gnu Radio, which you should
      definitely look into.<br>
      <br>
      <br>
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

--------------9090RwwXHFANP7uzIzp3u3Pu--

--------------ms050102080408090903050201
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
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI1MDkwMjEyMzYxOFow
TwYJKoZIhvcNAQkEMUIEQDX2h6w+NlCJHoAtXCRYukoEQlfvaCgzSVjrlhsiw5d1M97mjyQU
Y/HJacmb0iDclSRnzhGYQRTuiXbDgIrn/MkwagYJKwYBBAGCNxAEMV0wWzBGMQswCQYDVQQG
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
CSqGSIb3DQEBAQUABIICAB45cId39QNkpEK4+peRW4VDKxfsVwc3NBSkNabyuC7kKZ4cEe5y
vGgYeWNmI3irMVdEXJT9qGq+XyLhLU0pHzJMwMQFHWb5Olzf5Q2pLsw87sfLM5+fzpVG6alg
o839vOH1Sx1nuV1qyJlAGr9fH4X5f3Cqf730CGNWMVCWV1HvUjof2STJtfAel9x9T7v2vIA/
9++OmCABqNTjiZDJq2hbt3O58r7y4oe6ZL4KURQk1SfgM1RxLvgOkqw7zp+cunrjYYi4du4D
bEwD9c7JpcM2CePal9Rh1aWCQtts68BeddQnxvIH4ADy0kg2/9EQcLydboSPiVR6LedvSJMP
pPPmQM8bzyzYjLnYQQtNcG115Lu5gs46NfaTS1sKaIPrEj00S2wbhlFWStXX0PJ2yv7hIq13
Y63WV6hDMNg8E7jomsmpiecqP0up7TiuxxvO2UPF+ak86H7o5kpZxKkPwO29TFek1l28HThH
BqtxiyeO/ywvSyU5nRnDpAoF1gHKdxAFDSI344KJvF4EpVYi6a7J1rHWGJuJ+QABJb8nbBCn
mUhW3zRjacKdI6lK+S/XFOYZdmINtadSLL1Bt7uxuDmsEvJ/tf00B7GMoABiiJhjWCnhmyAE
nQT8tDvqLNEXnX4K1pu4oD81xPFdwsDYQu0IPZNxFj9fn7Ylt77kDMZhAAAAAAAA
--------------ms050102080408090903050201--

--===============6670170663089711290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6670170663089711290==--
