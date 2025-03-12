Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7247FA5D97E
	for <lists+usrp-users@lfdr.de>; Wed, 12 Mar 2025 10:32:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46120385F06
	for <lists+usrp-users@lfdr.de>; Wed, 12 Mar 2025 05:32:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741771971; bh=TKeDAT+NcbDaVSsqEIBleQpxLjgys6+YYeRc4qLGBMk=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=VxHd7c0jP84TuNz8E4FVId5138lbQHNf58lYnZDAgLsSjrrGfkgg9smwVLZJWfp+l
	 vWl9NeMhfhtE4ZngZ+6RG4JSxv7CMDj/bUNYqbCqD135LI0U6H87N8ktzxZXcoAWaE
	 8hJnVOhY8tMhTtD+yBmK1rffwOsnJEzC1aScH6p9sa8aM++EWL5B6dwIgEYnSdhrT2
	 SUmOF6dnQ+cDOtbXjSfg+rhIp1CllZo3+GiM/p9nkuhcTAAQ75ClEBnabQwTcY/iZH
	 l4V1lLm7GqKHlI5VBlRCPBo8/OSO6zSODQHqrGgx9HyoCh0T384eW3tmdjogxw9reu
	 QIx0kXaLmSbJQ==
Received: from lxmtout2.gsi.de (lxmtout2.gsi.de [140.181.3.112])
	by mm2.emwd.com (Postfix) with ESMTPS id C7668385EDD
	for <usrp-users@lists.ettus.com>; Wed, 12 Mar 2025 05:31:51 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout2.gsi.de (Postfix) with ESMTP id 1D94820350E6;
	Wed, 12 Mar 2025 10:31:50 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at lxmtout2.gsi.de
Received: from lxmtout2.gsi.de ([127.0.0.1])
	by localhost (lxmtout2.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id M-0AZYC1RorI; Wed, 12 Mar 2025 10:31:50 +0100 (CET)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout2.gsi.de (Postfix) with ESMTPS id 8D7C020350EC;
	Wed, 12 Mar 2025 10:31:49 +0100 (CET)
Received: from [140.181.69.163] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Wed, 12 Mar
 2025 10:31:48 +0100
Message-ID: <3e28eb52-1955-40ee-88f4-eb4097196a68@gsi.de>
Date: Wed, 12 Mar 2025 10:31:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Brian Padalino <bpadalino@gmail.com>
References: <CAEXYVK5j7GCkt1qSzGFkjeJu27-9F9aaL9mHQvgnQekWXCcZpw@mail.gmail.com>
From: Philipp Niedermayer <p.niedermayer@gsi.de>
Content-Language: de-DE, en-GB
In-Reply-To: <CAEXYVK5j7GCkt1qSzGFkjeJu27-9F9aaL9mHQvgnQekWXCcZpw@mail.gmail.com>
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvEX6.Campus.gsi.de (10.10.4.96) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: WGKOZQXBOI5PYMZDB4IPM3ZTBOIUUMAC
X-Message-ID-Hash: WGKOZQXBOI5PYMZDB4IPM3ZTBOIUUMAC
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_modtool io_ports not being populated
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WGKOZQXBOI5PYMZDB4IPM3ZTBOIUUMAC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4670955610518282592=="

--===============4670955610518282592==
Content-Language: de-DE, en-GB
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms080204030008030101080001"

--------------ms080204030008030101080001
Content-Type: multipart/alternative;
 boundary="------------TbMkuLKwR1pm0rv5ndiAi9ki"

--------------TbMkuLKwR1pm0rv5ndiAi9ki
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SXQncyBhIGtub3duIGlzc3VlIGZyb20gdGhlIHRpbWUgdGhlIHRvb2wgd2FzIHN0aWxsIGNh
bGxlZCANCiJyZm5vY19jcmVhdGVfdmVyaWxvZyIgKGJ1dCB1c2luZyB0aGUgc2FtZSB0ZW1w
bGF0ZXMpLg0KDQpRdW90ZTogIllvdSBkaWQgdGhlIHJpZ2h0IHRoaW5nLiBUaGUgaW9fcG9y
dHMgYXJlbid0IGN1cnJlbnRseSBzdXBwb3J0ZWQgDQpieSByZm5vY19jcmVhdGVfdmVyaWxv
Zywgc28gQVhJIHBvcnRzIGhhdmUgdG8gYmUgYWRkZWQgbWFudWFsbHkuIg0KDQpTZWUgaHR0
cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2lzc3Vlcy82MDUNCg0KDQoNCipG
cm9tOiogQnJpYW4gUGFkYWxpbm8gPGJwYWRhbGlub0BnbWFpbC5jb20+DQoNCipTZW50Oiog
VHVlc2RheSwgMTEgTWFyY2ggMjAyNSBhdCAyMTo0Nw0KDQoqVG86KiBVU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbSA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQoNCipTdWJqZWN0
OiogW1VTUlAtdXNlcnNdIHJmbm9jX21vZHRvb2wgaW9fcG9ydHMgbm90IGJlaW5nIHBvcHVs
YXRlZA0KDQoNCj4gSSBhbSB0cnlpbmcgdG8gYWRkIGEgdGltZWtlZXBlciBsaXN0ZW5lciwg
YXhpX21tIG1lbW9yeSBpbnRlcmZhY2UsIGFuZCANCj4gYSBwcHMgaW50ZXJmYWNlIHVzaW5n
IHJmbm9jX21vZHRvb2wgd2l0aCB0aGUgeW1sIGRlc2NyaXB0aW9uIGFuZCBpdCANCj4gZG9l
c24ndCBzZWVtIGxpa2UgaXQgYWN0dWFsbHkgYWRkcyB0aGUgcG9ydHMgdG8gdGhlIHRvcCBs
ZXZlbCB3aGVuIHRoZSANCj4gY29kZSBpcyBiZWluZyBnZW5lcmF0ZWQuDQo+DQo+IEkgdmVy
aWZpZWQgdGhpcyBieSB1c2luZyB0aGUgcmVwbGF5LnltbCBibG9jayBpbiBhbiBPT1QgYW5k
IGl0IG9ubHkgDQo+IHNlZW1zIHRvIGNyZWF0ZSB0aGUgY2hkciwgY3RybCwgYW5kIGFkZHMg
dGhlIG1lbV9jbGsgaW5wdXQuDQo+DQo+IElzIHRoaXMgYSBrbm93biBpc3N1ZT8gQW0gSSBk
b2luZyBzb21ldGhpbmcgd3Jvbmc/DQo+DQo+IFNvcnJ5IGZvciB0aGUgY29uZnVzaW9uLg0K
Pg0KPiBUaGFua3MsDQo+IEJyaWFuDQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tdXNy
cC11c2Vyc0BsaXN0cy5ldHR1cy5jb20NCj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0b3VzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQo=
--------------TbMkuLKwR1pm0rv5ndiAi9ki
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>It's a known issue from the time the tool was still called
      "rfnoc_create_verilog" (but using the same templates).</p>
    <p>Quote: "You did the right thing. The io_ports aren't currently
      supported by rfnoc_create_verilog, so AXI ports have to be added
      manually."</p>
    <p>See <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/=
EttusResearch/uhd/issues/605">https://github.com/EttusResearch/uhd/issues=
/605</a></p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix"><br>
      <div id=3D"rwhHeaders"
style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm=
 0cm;width:100%">
        <p style=3D"margin:0cm"><span><b>From:</b> Brian Padalino
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:bpadalino@g=
mail.com">&lt;bpadalino@gmail.com&gt;</a></span></p>
        <p style=3D"margin:0cm"><span><b>Sent:</b> Tuesday, 11 March 2025=

            at 21:47</span></p>
        <p style=3D"margin:0cm"><span><b>To:</b>
            <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:USRP-use=
rs@lists.ettus.com">USRP-users@lists.ettus.com</a>
            <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@=
lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a></span></p>
        <p style=3D"margin:0cm"><span><b>Subject:</b> [USRP-users]
            rfnoc_modtool io_ports not being populated</span></p>
      </div>
      <br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK5j7GCkt1qSzGFkjeJu27-9F9aaL9mHQvgnQekWXCcZpw@mail.gmai=
l.com"
style=3D"border:none !important; padding-left:0px !important; margin-left=
:0px !important;">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">I am trying to add a timekeeper listener, axi_mm
        memory interface, and a pps interface using rfnoc_modtool with
        the yml description and it doesn't seem like it actually adds
        the ports to the top level when the code is being generated.
        <div><br>
        </div>
        <div>I verified this by using the replay.yml block in an OOT and
          it only seems to create the chdr, ctrl, and adds the mem_clk
          input.</div>
        <div><br>
        </div>
        <div>Is this a known issue? Am I doing something wrong?</div>
        <div><br>
        </div>
        <div>Sorry for the confusion.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Brian</div>
      </div>
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

--------------TbMkuLKwR1pm0rv5ndiAi9ki--

--------------ms080204030008030101080001
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
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI1MDMxMjA5MzE0N1ow
TwYJKoZIhvcNAQkEMUIEQKYPDHby1hfzHS4OrEDIiLbkJ6CCd9Ay+TuRZ84tK5/yXjlLHEnr
fQ8AvvKpo+63ycpv/lnk1OhyBgepztfUStkwagYJKwYBBAGCNxAEMV0wWzBGMQswCQYDVQQG
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
CSqGSIb3DQEBAQUABIICAKgJ11E84toof5HMFXkWgWdJ89rddzZjmhIZ8BXpA3Pqd8JyzzSf
VoKAHeiJ0AoAZcrKltBILFMulU/ggHU/vFjd9jYKNS37Pq/WTWuMY5j9Rpxq/P8ilDdJBqQ9
g6t26wF/R/+MSojPKaS+Qddu/aH0IMAtyXzq0bJsHop1w4t9x94bZfGVIpaB0ICFNoz2W7zt
VpDxi1weTPBNNBJKPoropepuEKYfCrzTrAtLPGuPZ7zduQCe28FtIPBq3aplXQQET3jGlEJr
ySBC+2wyaT3+ppxh9sZCknp/aWCAnnkfRx+oIZV3J5f+vFmJ3VinAk/YZUw0349B7l951T0h
BlBgUEe76U5oMV+IQcI5OdzKQi+VhjWKxd42b933G7ZB1AsJ+BGltvs3NsUoc9/MpS5i5Uti
1rjkazQiomgMTLmqhMLl6xeADzIusjwiloRgH7wUtYDym6jPLrtcKTHt5Re4c2GUKqoR8UQ5
U6+7zQyh9inPZX+iHQlwfXdRKzusjZfsCJFOaZe044t6NlZZndDLPItVrEKqfjGKdcVbDvCr
8LCTxdVvLGzOKnyohaeUqqgdS202Fmi0C8zTIZdLv7tofkPLPCuYCdqLVUUPZbco3TR1PxTw
aO9LBvRxxkIjtJE/+I6PcDWxfGY/R0J9p/8cGv39W5u4jyBD78dZFX2PAAAAAAAA
--------------ms080204030008030101080001--

--===============4670955610518282592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4670955610518282592==--
