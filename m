Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED5E90E424
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2024 09:13:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDBDE3854D0
	for <lists+usrp-users@lfdr.de>; Wed, 19 Jun 2024 03:13:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718781203; bh=O2cQxoax+m13AXYDXlztOgevOvyqCbj4VH5/uDwXGc0=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eCFZmQI0UkpmX9V0nQ6xUQEzBbziojTX5b3HVSqje3A9RW3jc2OtWODCafCPXMSY3
	 rXhvV/mSLLsvgb9de3tPx+sYsQBZlQxt3rZG+PF2vzQ+rmy4K4WaMZZMGb+x0UOW/z
	 U/mSdlwGDa/AcUjxALKX1DTxJFcws7HcOLS9mhDyEXbpVlMtFUlvgKgCrga39EnY5M
	 HUIr4f4HWLBT6JGYzDvVfKGPb46FBGQrN0ovTvgsWRVjnJa/zoDthrqQA5HC+6QP0y
	 dmdv7RzbA5REChn1G6dANeTYnhBR8WdTXVVcm4oZRnf4BeyWSZRohUnod8zFFtQ39r
	 jKYcjHV8uY1tA==
Received: from lxmtout1.gsi.de (lxmtout1.gsi.de [140.181.3.111])
	by mm2.emwd.com (Postfix) with ESMTPS id 11BAF385215
	for <usrp-users@lists.ettus.com>; Wed, 19 Jun 2024 03:12:12 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout1.gsi.de (Postfix) with ESMTP id 5EBE42051048;
	Wed, 19 Jun 2024 09:12:11 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at lxmtout1.gsi.de
Received: from lxmtout1.gsi.de ([127.0.0.1])
	by localhost (lxmtout1.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ZCVl_UqIFTI4; Wed, 19 Jun 2024 09:12:11 +0200 (CEST)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout1.gsi.de (Postfix) with ESMTPS id 3A9C72051043;
	Wed, 19 Jun 2024 09:12:11 +0200 (CEST)
Received: from [140.181.67.245] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Wed, 19 Jun
 2024 09:12:11 +0200
Message-ID: <d6e73de0-fc99-4a0c-baab-8ce1022f2688@gsi.de>
Date: Wed, 19 Jun 2024 09:12:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dexter Lee <Dexter.Lee@Millennium-Space.com>
References: <SA1P110MB1165473EA8343B9DD6E334CFB4CEA@SA1P110MB1165.NAMP110.PROD.OUTLOOK.COM>
From: Philipp Niedermayer <p.niedermayer@gsi.de>
Content-Language: de-DE, en-GB
In-Reply-To: <SA1P110MB1165473EA8343B9DD6E334CFB4CEA@SA1P110MB1165.NAMP110.PROD.OUTLOOK.COM>
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvEX7.Campus.gsi.de (10.10.4.97) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: G6SMGSNKDEZNKSSDCUC2O6LA5QUDUEVR
X-Message-ID-Hash: G6SMGSNKDEZNKSSDCUC2O6LA5QUDUEVR
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building OOT RFNoC modules for GNURadio 3.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G6SMGSNKDEZNKSSDCUC2O6LA5QUDUEVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1411774196428519620=="

--===============1411774196428519620==
Content-Language: de-DE, en-GB
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms010600080806000304020608"

--------------ms010600080806000304020608
Content-Type: multipart/alternative;
 boundary="------------4FNzspz5rwD71fFGmrrKU2FZ"

--------------4FNzspz5rwD71fFGmrrKU2FZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

RGVhciBEZXh0ZXIsDQoNCnlvdSBjYW4gb2YgY291cnNlIGltcGxlbWVudCB5b3VyIG93biBn
YWluX2ltcGwgZm9yIEdSIGludGVncmF0aW9uLCBidXQgDQp3aHkgd291bGQgeW91IGRvIHRo
YXQgaWYgdGhlcmUgaXMgYSBnZW5lcmljIGltcGxlbWVudGF0aW9uIHByb3ZpZGVkIGJ5IA0K
R1IgdGhhdCBnZXQncyB0aGUgam9iIGRvbmU/DQoNCkhhdmUgYSBsb29rIGF0IG15IG9yaWdp
bmFsIHJlcGx5IG9uIHRoZSBtYWlsaW5nIGxpc3QgYWdhaW4gKGNpdGVkIA0KYmVsb3cpOiBU
aGVyZSBJIGRlc2NyaWJlZCBob3cgSSBpbnN0YW50aWF0ZSBhIGdlbmVyaWMgUkZOb0MgYmxv
Y2sgZnJvbSANCmdyLXVoZC9saWIgKHVoZC5yZm5vY19ibG9ja19nZW5lcmljIA0KPGh0dHBz
Oi8vZ2l0aHViLmNvbS9nbnVyYWRpby9nbnVyYWRpby9ibG9iLzJlNTkxMDg5ODlmYjhlMDZh
NTRhYmVlMGYyM2NiYTMzODI3ZTBiMmYvZ3ItdWhkL2xpYi9yZm5vY19ibG9ja19nZW5lcmlj
X2ltcGwuaD4pIA0KaW5zdGVhZCBvZiBhIGN1c3RvbSBnYWluIGJsb2NrIGltcGxlbWVudGF0
aW9uIGluIGdyLW9vdC9saWI7IGFuZCB1c2UgdGhlIA0KY29uY2VwdCBvZiB1c2VyIHByb3Bl
cnRpZXMgdG8gcGFzcyBwYXJhbWV0ZXJzLiBQcm9wZXJ0aWVzIGFyZSBhIHZlcnkgDQpwb3dl
cmZ1bCBhbmQgdXNlZnVsIGNvbmNlcHQgaW4gUkZOb0MsIG5vdCBvbmx5IHRvIGhhbmRsZSBz
YW1wbGluZyByYXRlIA0KY2hhbmdlcyAofFBST1BfS0VZX1NBTVBfUkFURXwpIGJ1dCBmb3Ig
YW55IHVzZXIgcGFyYW1ldGVyLiBUaGlzIGlzIGFsc28gDQp0aGUgbWVjaGFuaXNtIG1vc3Qg
b2YgdGhlIGRlZmF1bHQgYmxvY2tzIGluIGdyLXVoZCB1c2UgDQo8aHR0cHM6Ly9naXRodWIu
Y29tL3NlYXJjaD9xPXJlcG8lM0FnbnVyYWRpbyUyRmdudXJhZGlvK3Jmbm9jX2Jsb2NrX2dl
bmVyaWMrbGFuZ3VhZ2UlM0FZQU1MJnR5cGU9Y29kZSZsPVlBTUw+Lg0KDQpIb3cgZG9lcyBp
dCBjb25uZWN0IHRvIHRoZSBGUEdBPw0KVGhlIHRoaXJkIHBhcmFtZXRlciBvZiB1aGQucmZu
b2NfYmxvY2tfZ2VuZXJpYyBpcyB0aGUgYmxvY2sgbmFtZSANCigiR2FpbiIpLCBhbmQgaW4g
dGhlIHZlcnkgYm90dG9tIG9mIGdhaW5fYmxvY2tfY29udHJvbC5jcHAgDQo8aHR0cHM6Ly9n
aXQuZ3NpLmRlL3AubmllZGVybWF5ZXIvZXhjaXRlci8tL2Jsb2IvY2Y0NDRlZDA1NTI3NGVj
ODI2YmMwOTU2ZWVkMGI5NGRlYmJhYjkxMi9yZm5vYy1iZWFtX2V4Y2l0ZXIvbGliL2dhaW5f
YmxvY2tfY29udHJvbC5jcHAjTDYzLTY0PiANCnRoZSBtYWNybyB8VUhEX1JGTk9DX0JMT0NL
X1JFR0lTVEVSX0RJUkVDVHwgaXMgdXNlZCB0byB0ZWxsIFVIRCwgdGhhdCBhIA0KYmxvY2sg
d2l0aCBuYW1lICJHYWluIiBzaG91bGQgdXNlIHRoaXMgYmxvY2sgY29udHJvbGxlciB0byBj
b25uZWN0IHRvIGEgDQpjZXJ0YWluIE5vQy1JRC4gSW4gdGhlIGJsb2NrIGNvbnRyb2xsZXIg
eW91IGNhbiB0aGVuIGhhbmRsZXMgcHJvcGVydGllcyANCmFuZCBwb2tlcyByZWdpc3RlcnMu
DQoNCktpbmQgcmVnYXJkcw0KUGhpbGlwcA0KDQo+IEdlbmVyYWxseSwgSSBmb3VuZCB0aGF0
IHVzaW5nICJ8dWhkLnJmbm9jX2Jsb2NrX2dlbmVyaWN8IiBpbiANCj4gY29tYmluYXRpb24g
d2l0aCBwcm9wZXJ0aWVzIG1ha2VzIHRoaW5ncyBhIGxvdCBlYXNpZXIgcmVnYXJkaW5nIA0K
PiBiaW5kaW5ncywgc2luY2UgaXQgbWVhbnMgeW91IG5lZWQgbXVjaCBsZXNzIGNvZGUgYW5k
IG5vIGN1c3RvbSBQeXRob24gDQo+IGJpbmRpbmdzLg0KPg0KPiBJbiBteV9yZm5vY19nYWlu
LmJsb2NrLnltbCANCj4gPGh0dHBzOi8vZ2l0LmdzaS5kZS9wLm5pZWRlcm1heWVyL2V4Y2l0
ZXIvLS9ibG9iL2NmNDQ0ZWQwNTUyNzRlYzgyNmJjMDk1NmVlZDBiOTRkZWJiYWI5MTIvcmZu
b2MtYmVhbV9leGNpdGVyL2dyYy9iZWFtX2V4Y2l0ZXJfcmZub2NfZ2Fpbi5ibG9jay55bWw+
Og0KPg0KPiB0ZW1wbGF0ZXM6DQo+IGltcG9ydHM6fC0NCj4gZnJvbSBnbnVyYWRpbyBpbXBv
cnQgdWhkDQo+IG1ha2U6fC0NCj4gdWhkLnJmbm9jX2Jsb2NrX2dlbmVyaWMoDQo+IHNlbGYu
cmZub2NfZ3JhcGgsDQo+IHVoZC5kZXZpY2VfYWRkcigiIiksDQo+ICJHYWluIiwNCj4gLTEs
ICMgZGV2aWNlX3NlbGVjdA0KPiAtMSwgIyBpbnN0YW5jZV9pbmRleA0KPiApDQo+IHNlbGYu
JHtpZH0uc2V0X3Byb3BlcnR5KCdnYWluJywgJHtjb25zdGFudH0pDQo+IGNhbGxiYWNrczoN
Cj4gLXNldF9wcm9wZXJ0eSgnZ2FpbicsJHtjb25zdGFudH0pDQo+DQo+IEFuZCBpbiBnYWlu
X2Jsb2NrX2NvbnRyb2wuY3BwIA0KPiA8aHR0cHM6Ly9naXQuZ3NpLmRlL3AubmllZGVybWF5
ZXIvZXhjaXRlci8tL2Jsb2IvY2Y0NDRlZDA1NTI3NGVjODI2YmMwOTU2ZWVkMGI5NGRlYmJh
YjkxMi9yZm5vYy1iZWFtX2V4Y2l0ZXIvbGliL2dhaW5fYmxvY2tfY29udHJvbC5jcHA+DQo+
DQo+IHxwcm9wZXJ0eV90PGludD4gX3Byb3BfZ2FpbiA9IHByb3BlcnR5X3Q8aW50PihQUk9Q
X0dBSU4sIERFRkFVTFRfR0FJTiwgDQo+IHtyZXNfc291cmNlX2luZm86OlVTRVJ9KTt8DQo+
DQo+IHZvaWRfcmVnaXN0ZXJfcHJvcHMoKXsNCj4gcmVnaXN0ZXJfcHJvcGVydHkoJl9wcm9w
X2dhaW4pOw0KPiBhZGRfcHJvcGVydHlfcmVzb2x2ZXIoeyZfcHJvcF9nYWlufSwgeyZfcHJv
cF9nYWlufSwgW3RoaXNdKCl7DQo+IHRoaXMtPnNldF9nYWluX3ZhbHVlKHRoaXMtPl9wcm9w
X2dhaW4uZ2V0KCkpOw0KPiB9KTsNCj4gfSBSRk5PQ19CTE9DS19DT05TVFJVQ1RPUihnYWlu
X2Jsb2NrX2NvbnRyb2wpew0KPiBfcmVnaXN0ZXJfcHJvcHMoKTsNCj4gfQ0KPg0KPiB2b2lk
c2V0X2dhaW5fdmFsdWUoY29uc3RpbnRnYWluKXsNCj4gLy9UaGUgZ2FpbiBibG9jayBmcm9t
dGhlIHR1dG9yaWFsIG9ubHkgc3VwcG9ydHMgaW50ZWdlciBnYWluIHZhbHVlcw0KPiByZWdz
KCkucG9rZTMyKFJFR19HQUlOLCAodWludDMyX3QpZ2Fpbik7DQo+IH0NCj4gaW50Z2V0X2dh
aW5fdmFsdWUoKXsNCj4gcmV0dXJucmVncygpLnBlZWszMihSRUdfR0FJTik7DQo+IH0NCj4N
Cj4gVUhEX1JGTk9DX0JMT0NLX1JFR0lTVEVSX0RJUkVDVChnYWluX2Jsb2NrX2NvbnRyb2ws
IDB4YjE2LCAiR2FpbiIsIA0KPiBDTE9DS19LRVlfR1JBUEgsICJidXNfY2xrIikNCj4NCj4N
Cg0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCipGcm9tOiogRGV4dGVyIExlZSBbbWFpbHRvOkRl
eHRlci5MZWVATWlsbGVubml1bS1TcGFjZS5jb21dDQoqRGF0ZToqIFdlZG5lc2RheSwgSnVu
ZSAxOSwgMjAyNCBhdCAwMToxNiBVVEMrMg0KKlN1YmplY3Q6KiBbVVNSUC11c2Vyc10gUmU6
IEJ1aWxkaW5nIE9PVCBSRk5vQyBtb2R1bGVzIGZvciBHTlVSYWRpbyAzLjEwDQoNCj4gSGkg
UGhpbGxpcCwNCj4NCj4gVGhhbmsgeW91IGZvciB5b3VyIHBvc3QgcmVnYXJkaW5nIHRoZSBn
YWluIGV4YW1wbGUgZm9yIFVIRCA0IGluIHRoZSANCj4gYWJzZW5jZSBvZiBSRk5PQ01PRFRP
T0wuwqAgSSBoYXZlIGJlZW4gZnJ1c3RyYXRlZCB3aXRoIHRoaXMgbGF0ZWx5IGFuZCANCj4g
eW91ciByZXBvIHdhcyBpbW1lbnNlbHkgaGVscGZ1bC4NCj4NCj4gT25lIHF1ZXN0aW9uIEkg
aGFkIHdhcyBob3cgeW91IHdlcmUgYWJsZSB0byBjcmVhdGUgdGhlIFJGTk9DIGJsb2NrIGlu
IA0KPiBHTlUgUmFkaW8gQ29tcGFuaW9uIHdpdGhvdXQgdGhlIG5lZWQgZm9yIGEg4oCcZ2Fp
bl9pbXBsLmjigJ0gYW5kIA0KPiDigJxnYWluX2ltcGwuY2PigJ0gdW5kZXIgeW91ciBsaWIg
ZGlyZWN0b3J5LsKgIEkga25vdyB0aG9zZSBhcmUgZ2VuZXJhdGVkIA0KPiB1c3VhbGx5IGJl
IFJGTk9DTU9EVE9PTCAoc2NyZWVuc2hvdCBiZWxvdyBmcm9tIFVIRDMpLCBkbyB3ZSBub3Qg
bmVlZCANCj4gdG8gY3JlYXRlIHRob3NlIGZvciBVSEQ0Pw0KPiBodHRwczovL2tiLmV0dHVz
LmNvbS9HZXR0aW5nX1N0YXJ0ZWRfd2l0aF9SRk5vQ19EZXZlbG9wbWVudA0KPg0KPiBUaGFu
ayB5b3UhDQo+DQo+IC1EZXh0ZXINCj4NCg==
--------------4FNzspz5rwD71fFGmrrKU2FZ
Content-Type: multipart/related;
 boundary="------------6kSMJUv7QqN804lY5gl0MnzC"

--------------6kSMJUv7QqN804lY5gl0MnzC
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">
      <div id=3D"rwhMsgHeader">
        <p>Dear Dexter,</p>
        you can of course implement your own gain_impl for GR
        integration, but why would you do that if there is a generic
        implementation provided by GR that get's the job done?</div>
      <div><br>
      </div>
      <div>Have a look at my original reply on the mailing list again
        (cited below): There I described how I instantiate a generic
        RFNoC block from gr-uhd/lib (<a
href=3D"https://github.com/gnuradio/gnuradio/blob/2e59108989fb8e06a54abee=
0f23cba33827e0b2f/gr-uhd/lib/rfnoc_block_generic_impl.h">uhd.rfnoc_block_=
generic</a>)
        instead of a custom gain block implementation in gr-oot/lib; and
        use the concept of user properties to pass parameters.
        Properties are a very powerful and useful concept in RFNoC, not
        only to handle sampling rate changes (<code>PROP_KEY_SAMP_RATE</c=
ode>)
        but for any user parameter. This is also the mechanism <a
href=3D"https://github.com/search?q=3Drepo%3Agnuradio%2Fgnuradio+rfnoc_bl=
ock_generic+language%3AYAML&amp;type=3Dcode&amp;l=3DYAML">most
          of the default blocks in gr-uhd use</a>.<br>
      </div>
      <div><br>
      </div>
      <div>How does it connect to the FPGA?</div>
      <div>The third parameter of uhd.rfnoc_block_generic is the block
        name ("Gain"), and in the very bottom of <a
href=3D"https://git.gsi.de/p.niedermayer/exciter/-/blob/cf444ed055274ec82=
6bc0956eed0b94debbab912/rfnoc-beam_exciter/lib/gain_block_control.cpp#L63=
-64">gain_block_control.cpp</a>
        the macro <code><span class=3D"hljs-built_in">UHD_RFNOC_BLOCK_REG=
ISTER_DIRECT</span></code>
        is used to tell UHD, that a block with name "Gain" should use
        this block controller to connect to a certain NoC-ID. In the
        block controller you can then handles properties and pokes
        registers.</div>
      <div><br>
        <p>Kind regards<br>
          Philipp</p>
        <p>
          <blockquote type=3D"cite">
            <p>Generally, I found that using "<code>uhd.rfnoc_block_gener=
ic</code>"
              in combination with properties makes things a lot easier
              regarding bindings, since it means you need much less code
              and no custom Python bindings.</p>
            <p>In <a
href=3D"https://git.gsi.de/p.niedermayer/exciter/-/blob/cf444ed055274ec82=
6bc0956eed0b94debbab912/rfnoc-beam_exciter/grc/beam_exciter_rfnoc_gain.bl=
ock.yml">my_rfnoc_gain.block.yml</a>:</p>
            <pre class=3D"code highlight" lang=3D"yaml"><span><span
            class=3D"hljs-attr">templates:</span><span class=3D""></span>=
</span>
<span><span class=3D"">  </span><span class=3D"hljs-attr">imports:</span>=
<span
            class=3D""> </span><span class=3D"hljs-string">|-</span></spa=
n>
<span><span class=3D"hljs-string">    from gnuradio import uhd</span></sp=
an>
<span><span class=3D"hljs-string"></span><span class=3D"">  </span><span
            class=3D"hljs-attr">make:</span><span class=3D""> </span><spa=
n
            class=3D"hljs-string">|-</span></span>
<span><span class=3D"hljs-string">    uhd.rfnoc_block_generic(</span></sp=
an>
<span><span class=3D"hljs-string">        self.rfnoc_graph,</span></span>=

<span><span class=3D"hljs-string">        uhd.device_addr(""),</span></sp=
an>
<span><span class=3D"hljs-string">        "Gain",</span></span>
<span><span class=3D"hljs-string">        -1, # device_select</span></spa=
n>
<span><span class=3D"hljs-string">        -1, # instance_index</span></sp=
an>
<span><span class=3D"hljs-string">    )</span></span>
<span><span class=3D"hljs-string">    self.${id}.set_property('gain', ${c=
onstant})</span></span>
<span><span class=3D"hljs-string"></span><span class=3D"">  </span><span
            class=3D"hljs-attr">callbacks:</span><span class=3D""></span>=
</span>
<span><span class=3D"">    </span><span class=3D"hljs-bullet">-</span><sp=
an
            class=3D""> </span><span class=3D"hljs-string">set_property('=
gain',</span><span
            class=3D""> </span><span class=3D"hljs-string">${constant})</=
span></span></pre>
          </blockquote>
          <blockquote type=3D"cite">
            <p>And in <a
href=3D"https://git.gsi.de/p.niedermayer/exciter/-/blob/cf444ed055274ec82=
6bc0956eed0b94debbab912/rfnoc-beam_exciter/lib/gain_block_control.cpp">ga=
in_block_control.cpp</a><br>
            </p>
            <p><code><span class=3D"hljs-type">property_t</span><span
                  class=3D"">&lt;</span><span class=3D"hljs-type">int</sp=
an><span
                  class=3D"">&gt; _prop_gain </span><span class=3D"">=3D =
</span><span
                  class=3D"hljs-built_in">property_t</span><span class=3D=
"">&lt;</span><span
                  class=3D"hljs-type">int</span><span class=3D"">&gt;</sp=
an><span
                  class=3D"">(PROP_GAIN, DEFAULT_GAIN,
                  {res_source_info::USER})</span><span class=3D"">;</span=
><span
                  class=3D""></span></code></p>
            <pre class=3D"code highlight" lang=3D"cpp"><span><span
            class=3D"hljs-type">void</span><span class=3D""> _register_pr=
ops</span><span
            class=3D"">()</span><span class=3D"">{</span></span>
<span><span class=3D"">	</span><span class=3D"hljs-built_in">register_pro=
perty</span><span
            class=3D"">(&amp;_prop_gain)</span><span class=3D"">;</span><=
/span>
<span><span class=3D"">	</span><span class=3D"hljs-built_in">add_property=
_resolver</span><span
            class=3D"">({&amp;_prop_gain}, {&amp;_prop_gain}, [</span><sp=
an
            class=3D"hljs-keyword">this</span><span class=3D"">]</span><s=
pan
            class=3D"">()</span><span class=3D""> {</span></span>
<span><span class=3D"">		</span><span class=3D"hljs-keyword">this</span><=
span
            class=3D"">-&gt;</span><span class=3D"hljs-built_in">set_gain=
_value</span><span
            class=3D"">(</span><span class=3D"hljs-keyword">this</span><s=
pan
            class=3D"">-&gt;_prop_gain.</span><span class=3D"hljs-built_i=
n">get</span><span
            class=3D"">()</span><span class=3D"">)</span><span class=3D""=
>;</span></span>
<span><span class=3D"">	})</span><span class=3D"">;</span></span>
<span><span class=3D"">}

</span></span><span><span class=3D""></span><span class=3D"hljs-built_in"=
>RFNOC_BLOCK_CONSTRUCTOR</span><span
            class=3D"">(gain_block_control)</span><span class=3D""> {</sp=
an></span>
<span><span class=3D"">	_register_props</span><span class=3D"">()</span><=
span
            class=3D"">;</span></span>
<span><span class=3D"">}</span></span>
<span><span class=3D""></span></span>
<span><span class=3D"hljs-function"><span class=3D"hljs-type">void</span>=
<span
            class=3D"hljs-function"> </span><span class=3D"hljs-title">se=
t_gain_value</span><span
            class=3D"hljs-params"><span class=3D"hljs-params">(</span><sp=
an
            class=3D"hljs-type">const</span><span class=3D"hljs-params"> =
</span><span
            class=3D"hljs-type">int</span><span class=3D"hljs-params"> ga=
in)</span></span></span><span
            class=3D"">{</span></span>
<span>	<span class=3D"hljs-comment"><span class=3D"hljs-comment">//</span=
><span
            class=3D"hljs-comment"> The gain block </span><span
            class=3D"hljs-comment">from</span><span class=3D"hljs-comment=
"> the tutorial only </span><span
            class=3D"hljs-comment">supports integer gain values</span></s=
pan><span
            class=3D""></span></span>
<span><span class=3D"">	</span><span class=3D"hljs-built_in">regs</span><=
span
            class=3D"">()</span><span class=3D"">.</span><span
            class=3D"hljs-built_in">poke32</span><span class=3D"">(REG_GA=
IN, </span><span
            class=3D"">(</span><span class=3D"hljs-type">uint32_t</span><=
span
            class=3D"">)</span><span class=3D""> gain)</span><span class=3D=
"">;</span></span>
<span><span class=3D"">}</span></span>
<span><span class=3D""></span></span><span><span class=3D"hljs-function">=
<span
            class=3D"hljs-type">int</span><span class=3D"hljs-function"> =
</span><span
            class=3D"hljs-title">get_gain_value</span><span
            class=3D"hljs-params">()</span></span><span class=3D"">{</spa=
n></span>
<span><span class=3D"">	</span><span class=3D"hljs-keyword">return</span>=
<span
            class=3D""> </span><span class=3D"hljs-built_in">regs</span><=
span
            class=3D"">()</span><span class=3D"">.</span><span
            class=3D"hljs-built_in">peek32</span><span class=3D"">(REG_GA=
IN)</span><span
            class=3D"">;</span><span class=3D""></span></span>
<span><span class=3D"">}</span></span>

<span><span class=3D"hljs-built_in">UHD_RFNOC_BLOCK_REGISTER_DIRECT</span=
><span
            class=3D"">(</span></span><span><span class=3D"">gain_block_c=
ontrol, </span><span
            class=3D"hljs-number">0xb16</span><span class=3D"">, </span><=
span
            class=3D"hljs-string">"Gain"</span><span class=3D"">, CLOCK_K=
EY_GRAPH, </span><span
            class=3D"hljs-string">"bus_clk"</span><span class=3D"">)</spa=
n><span
            class=3D""></span></span>


</pre>
          </blockquote>
          <br>
        </p>
        <p><br>
        </p>
        <hr id=3D"rwhMsgHdrDivider"
style=3D"border:0;border-top:1px solid #404040;padding:0;margin:10px 0 5p=
x 0;width:100%;">
        <div
style=3D"font-family:Tahoma !important; color:#404040 !important; font-si=
ze:13px !important;"><b>From:</b>
          Dexter Lee [<a class=3D"moz-txt-link-freetext" href=3D"mailto:D=
exter.Lee@Millennium-Space.com">mailto:Dexter.Lee@Millennium-Space.com</a=
>]</div>
        <div
style=3D"font-family:Tahoma !important; color:#404040 !important; font-si=
ze:13px !important;"><b>Date:</b>
          Wednesday, June 19, 2024 at 01:16 UTC+2</div>
        <div
style=3D"font-family:Tahoma !important; color:#404040 !important; font-si=
ze:13px !important;"><b>Subject:</b>
          [USRP-users] Re: Building OOT RFNoC modules for GNURadio 3.10</=
div>
        <br>
      </div>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:SA1P110MB1165473EA8343B9DD6E334CFB4CEA@SA1P110MB1165.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
=2Eshape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Aptos;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">Hi Phillip,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Thank you for your post regarding the gain=

          example for UHD 4 in the absence of RFNOCMODTOOL.=C2=A0 I have =
been
          frustrated with this lately and your repo was immensely
          helpful.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">One question I had was how you were able t=
o
          create the RFNOC block in GNU Radio Companion without the need
          for a =E2=80=9Cgain_impl.h=E2=80=9D and =E2=80=9Cgain_impl.cc=E2=
=80=9D under your lib
          directory.=C2=A0 I know those are generated usually be RFNOCMOD=
TOOL
          (screenshot below from UHD3), do we not need to create those
          for UHD4?<br>
          <a
href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_Development"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">http=
s://kb.ettus.com/Getting_Started_with_RFNoC_Development</a><o:p></o:p></p=
>
        <p class=3D"MsoNormal"><img style=3D"width:4.4791in;height:2.3541=
in"
            id=3D"Picture_x0020_2"
            src=3D"cid:part1.t5GOvlsP.RgPbGeCu@gsi.de" class=3D""
            width=3D"430" height=3D"226" border=3D"0"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal"><span
style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#156082;mso-ligat=
ures:none">Thank
            you!<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span
style=3D"font-family:&quot;Arial&quot;,sans-serif;color:#156082;mso-ligat=
ures:none">-Dexter</span><o:p></o:p></p>
      </div>
    </blockquote>
  </body>
  <lt-container></lt-container>
</html>
--------------6kSMJUv7QqN804lY5gl0MnzC
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Id: <part1.t5GOvlsP.RgPbGeCu@gsi.de>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAA1EAAAG9CAMAAADDQgxIAAABNVBMVEUAAAAAAFIAAFAAAIQA
AIEAVVIAU1AAU4EAVaUAU6EAf4EAf6EAf8EAgoQAgsZSAABQAABSAFJQAFBSAIRQAIFSVQBQ
UwBSVVJQU1BQU4FSVaVQU6FQf8FSgoRSgsZQoqFQosFSpudQouKEAACBAACEAFKBAFCEAISB
AIGBUwCEVaWBU6GBf1CBf8GEggCEglKBouKEx8aBwsGEx/+Ex+eBwvmBwuKlVQChUwClVVKh
U1ClVYShU4Ghf6GholChooGh3vmh3uKl48al4/+l4+fBfwDBf1DGggDGglLGplLBolDB3qHd
3d3B+cHG///G/+fB+fnB+eLnplLiolDiooH/x4Tnx4T5woHiwoH53qHi3qH/46X//8bn/8b5
+cHi+cHn/////+f5+fni+fn5+eLi+eL///9gFdjaAAA0VklEQVR42u2dC5vcNpqdabmjWOva
tqPMxdmdS0RrspPMTjKJpuKOk9i9q9Cd3Ykdq+leRraiscuK/v9PCIEP3wUgyCKrWfdznket
7iIKFxIvcSFwWLydotviydv5dFs8ewsdkV59XBTFe99vPZ15q9mOVaCeQBCIgiAQBUEgCoIg
EAVBIAqCQBQEQSAKgkAUBIEoCAJREASBKAgCURAEoiAIAlEQBKIgCERBEASiIAhEQRCIgqAz
J+qHT4rinefD374riuJyOMhkF44fPlmX6ny66899WvxXH7/7Ff3YXBrn1EL6hM2X7tad9vk0
eAHXlmOHGT1QotqLHgyKbtZf8+8+uMyctPgSmL/GwXVPoiZ9feB6p8UfQdTa8vk4fQYn5FIT
3jdR//N5/mwPFQZE3bF91A+f+MozyNXdCEQmtFEE6G7aKCpX//UOxZ9E1HrY5duH2EZ1ipxc
wFf/7vuh+1e+MoCom3d+SucoVJ5Bom5Pl6gOOzMQZb59jETdXb4FUZOJevXxJZ1BN0Iq3vkf
n7j/npgRQHv0Tlqxwg+j/Elrf7i/n8glcBG4b7R/OePEZ3zA/O3D/FGuiU/y3a/cRbpzv/Bn
l/bifvcBJeKPuDAu+E37kc/NpemHRHH8Ma7BP4RymVx7e0epUlT8547ygjJrieIP79yP0E++
fferMeV757ntKEnxvLfkE86cO790ll99/KSv1+e+csmFsaW7bf/8e8robYg1V04+cXwmfRZC
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
TkSuQmCC

--------------6kSMJUv7QqN804lY5gl0MnzC--


--------------4FNzspz5rwD71fFGmrrKU2FZ--

--------------ms010600080806000304020608
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: Kryptografische S/MIME-Signatur

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgMFADCABgkqhkiG9w0BBwEAAKCC
EbUwggUSMIID+qADAgECAgkA4wvV+K8l2YEwDQYJKoZIhvcNAQELBQAwgYIxCzAJBgNVBAYT
AkRFMSswKQYDVQQKDCJULVN5c3RlbXMgRW50ZXJwcmlzZSBTZXJ2aWNlcyBHbWJIMR8wHQYD
VQQLDBZULVN5c3RlbXMgVHJ1c3QgQ2VudGVyMSUwIwYDVQQDDBxULVRlbGVTZWMgR2xvYmFs
Um9vdCBDbGFzcyAyMB4XDTE2MDIyMjEzMzgyMloXDTMxMDIyMjIzNTk1OVowgZUxCzAJBgNV
BAYTAkRFMUUwQwYDVQQKEzxWZXJlaW4genVyIEZvZXJkZXJ1bmcgZWluZXMgRGV1dHNjaGVu
IEZvcnNjaHVuZ3NuZXR6ZXMgZS4gVi4xEDAOBgNVBAsTB0RGTi1QS0kxLTArBgNVBAMTJERG
Ti1WZXJlaW4gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkgMjCCASIwDQYJKoZIhvcNAQEBBQAD
ggEPADCCAQoCggEBAMtg1/9moUHN0vqHl4pzq5lN6mc5WqFggEcVToyVsuXPztNXS43O+FZs
FVV2B+pG/cgDRWM+cNSrVICxI5y+NyipCf8FXRgPxJiZN7Mg9mZ4F4fCnQ7MSjLnFp2uDo0p
eQcAIFTcFV9Kltd4tjTTwXS1nem/wHdN6r1ZB+BaL2w8pQDcNb1lDY9/Mm3yWmpLYgHurDg0
WUU2SQXaeMpqbVvAgWsRzNI8qIv4cRrKO+KA3Ra0Z3qLNupOkSk9s1FcragMvp0049ENF4N1
xDkesJQLEvHVaY4l9Lg9K7/AjsMeO6W/VRCrKq4Xl14zzsjz9AkH4wKGMUZrAcUQDBHHWekC
AwEAAaOCAXQwggFwMA4GA1UdDwEB/wQEAwIBBjAdBgNVHQ4EFgQUk+PYMiba1fFKpZFK4OpL
4qIMz+EwHwYDVR0jBBgwFoAUv1kgNgB5oKAia4zV8mHSuCzLgkowEgYDVR0TAQH/BAgwBgEB
/wIBAjAzBgNVHSAELDAqMA8GDSsGAQQBga0hgiwBAQQwDQYLKwYBBAGBrSGCLB4wCAYGZ4EM
AQICMEwGA1UdHwRFMEMwQaA/oD2GO2h0dHA6Ly9wa2kwMzM2LnRlbGVzZWMuZGUvcmwvVGVs
ZVNlY19HbG9iYWxSb290X0NsYXNzXzIuY3JsMIGGBggrBgEFBQcBAQR6MHgwLAYIKwYBBQUH
MAGGIGh0dHA6Ly9vY3NwMDMzNi50ZWxlc2VjLmRlL29jc3ByMEgGCCsGAQUFBzAChjxodHRw
Oi8vcGtpMDMzNi50ZWxlc2VjLmRlL2NydC9UZWxlU2VjX0dsb2JhbFJvb3RfQ2xhc3NfMi5j
ZXIwDQYJKoZIhvcNAQELBQADggEBAIcL/z4Cm2XIVi3WO5qYi3FP2ropqiH5Ri71sqQPrhE4
eTizDnS6dl2e6BiClmLbTDPo3flq3zK9LExHYFV/53RrtCyD2HlrtrdNUAtmB7Xts5et6u5/
MOaZ/SLick0+hFvu+c+Z6n/XUjkurJgARH5pO7917tALOxrN5fcPImxHhPalR6D90Bo0fa3S
PXez7vTXTf/D6OWST1k+kEcQSrCFWMBvf/iu7QhCnh7U3xQuTY+8npTD5+32GPg8SecmqKc2
2CzeIs2LgtjZeOJVEqM7h0S2EQvVDFKvaYwPBt/QolOLV5h7z/0HJPT8vcP9SpIClxvyt7bP
ZYoaorVyGTkwggWsMIIElKADAgECAgcbY7rQHiw9MA0GCSqGSIb3DQEBCwUAMIGVMQswCQYD
VQQGEwJERTFFMEMGA1UEChM8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRzY2hl
biBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLEwdERk4tUEtJMS0wKwYDVQQDEyRE
Rk4tVmVyZWluIENlcnRpZmljYXRpb24gQXV0aG9yaXR5IDIwHhcNMTYwNTI0MTEzODQwWhcN
MzEwMjIyMjM1OTU5WjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9l
cmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBWLjEQMA4GA1UE
CwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWluZyBDQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJ07eRxH3h+Gy8Zp1xCeOdfZojDbchwFfylf
S2jxrRnWTOFrG7ELf6Gr4HuLi9gtzm6IOhDuV+UefwRRNuu6cG1joL6WLkDh0YNMZj0cZGnl
m6Stcq5oOVGHecwX064vXWNxSzl660Knl5BpBb+Q/6RAcL0D57+eGIgfn5mITQ5HjUhfZZkQ
0tkqSe3BuS0dnxLLFdM/fx5ULzquk1enfnjK1UriGuXtQX1TX8izKvWKMKztFwUkP7agCwf9
TRqaA1KgNpzeJIdl5Of6x5ZzJBTN0OgbaJ4YWa52fvfRCng8h0uwN89Tyjo4EPPLR22MZD08
WkVKusqAfLjz56dMTM0CAwEAAaOCAgUwggIBMBIGA1UdEwEB/wQIMAYBAf8CAQEwDgYDVR0P
AQH/BAQDAgEGMCkGA1UdIAQiMCAwDQYLKwYBBAGBrSGCLB4wDwYNKwYBBAGBrSGCLAEBBDAd
BgNVHQ4EFgQUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0jBBgwFoAUk+PYMiba1fFKpZFK
4OpL4qIMz+EwgY8GA1UdHwSBhzCBhDBAoD6gPIY6aHR0cDovL2NkcDEucGNhLmRmbi5kZS9n
bG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDBAoD6gPIY6aHR0cDovL2NkcDIu
cGNhLmRmbi5kZS9nbG9iYWwtcm9vdC1nMi1jYS9wdWIvY3JsL2NhY3JsLmNybDCB3QYIKwYB
BQUHAQEEgdAwgc0wMwYIKwYBBQUHMAGGJ2h0dHA6Ly9vY3NwLnBjYS5kZm4uZGUvT0NTUC1T
ZXJ2ZXIvT0NTUDBKBggrBgEFBQcwAoY+aHR0cDovL2NkcDEucGNhLmRmbi5kZS9nbG9iYWwt
cm9vdC1nMi1jYS9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwSgYIKwYBBQUHMAKGPmh0dHA6Ly9j
ZHAyLnBjYS5kZm4uZGUvZ2xvYmFsLXJvb3QtZzItY2EvcHViL2NhY2VydC9jYWNlcnQuY3J0
MA0GCSqGSIb3DQEBCwUAA4IBAQCBeEWkTqR/DlXwCbFqPnjMaDWpHPOVnj/z+N9rOHeJLI21
rT7H8pTNoAauusyosa0zCLYkhmI2THhuUPDVbmCNT1IxQ5dGdfBi5G5mUcFCMWdQ5UnnOR7L
n8qGSN4IFP8VSytmm6A4nwDO/afr0X9XLchMX9wQEZc+lgQCXISoKTlslPwQkgZ7nu7YRrQb
tQMMONncsKk/cQYLsgMHM8KNSGMlJTx6e1du94oFOO+4oK4v9NsH1VuEGMGpuEvObJAaguS5
Pfp38dIfMwK/U+d2+dwmJUFvL6Yb+qQTkPp8ftkLYF3sv8pBoGH7EUkp2KgtdRXYShjqFu9V
NCIaE40GMIIG6zCCBdOgAwIBAgIMJfOJ+jUx1Lbfj3D5MA0GCSqGSIb3DQEBCwUAMIGNMQsw
CQYDVQQGEwJERTFFMEMGA1UECgw8VmVyZWluIHp1ciBGb2VyZGVydW5nIGVpbmVzIERldXRz
Y2hlbiBGb3JzY2h1bmdzbmV0emVzIGUuIFYuMRAwDgYDVQQLDAdERk4tUEtJMSUwIwYDVQQD
DBxERk4tVmVyZWluIEdsb2JhbCBJc3N1aW5nIENBMB4XDTIyMDEwNDA4NTkzMVoXDTI1MDEw
MzA4NTkzMVowgZExCzAJBgNVBAYTAkRFMTwwOgYDVQQKDDNHU0kgSGVsbWhvbHR6emVudHJ1
bSBmdWVyIFNjaHdlcmlvbmVuZm9yc2NodW5nIEdtYkgxFDASBgNVBAQMC05pZWRlcm1heWVy
MRAwDgYDVQQqDAdQaGlsaXBwMRwwGgYDVQQDDBNQaGlsaXBwIE5pZWRlcm1heWVyMIICIjAN
BgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAv+/Jmqu9myl16Gg64DqN9C7ufIgv54YnP8yW
kfMrZuE/mDbpBq/r6QISiRblgufwSlpCMssk4RVRpZgZiGNkfEmsE+1r/tN9QKLJY7biG/0X
8nj6b+WGc+2iRFPrkw/v8YJ0cfmR2hpfaBpxuqgUrFl+ZYGlBT5IBthM336AJ3Lj4wEaoVH0
2cyD38I/KhS+FyDtxVnd/1YotB+HPIiRCk1JW/8zi3L7EpYT6Pd04qCXtoj52RBt2rJpG6Et
i7CaMjfVLnbnnQMx+/ANmpc7oqpcZfVNsaMNlVBmrU8HnhXrDDC4pag6CUmY0rb1lqCTyJNC
F2eHQ5VB4xHXzd6Og2703T7lbOn/wKhzHvMAoaOd/5vbCi4OF9N26aTCThNX2ASaf+NlfAC1
xqOJntkaYKaApk3Qu9tgkkf5CgtNzW7Esew6HZmXH5wXjr2vy+Em/iiu1mhbs6Nxiai8121S
P8uShfkUaLP4w8yKcR6h+/4jg5HAMTmsLLLJtcy88grYW8msACuaP9puBFC0iEcPhktDg4K0
ilSu2ospZ4OZXKJWSfbPcxCuOrvxpP82Mlq47KK4K+E8snOM/uIRYil9pcKGuZ4accWkPdG9
5ezjciOJ3Zk0SZJFMuBobdqjlAt0Jrq9OLat9RBTKl6JW4+XPCrqLdL2kTemFc9B6bez7SkC
AwEAAaOCAkMwggI/MD4GA1UdIAQ3MDUwDwYNKwYBBAGBrSGCLAEBBDAQBg4rBgEEAYGtIYIs
AQEECjAQBg4rBgEEAYGtIYIsAgEECjAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIGwDATBgNV
HSUEDDAKBggrBgEFBQcDBDAdBgNVHQ4EFgQU42Rsgzk9DT0tz2YeGwapcKNre1AwHwYDVR0j
BBgwFoAUazqYi/nyU4na4K2yMh4JH+iqO3QwHwYDVR0RBBgwFoEUcC5uaWVkZXJtYXllckBn
c2kuZGUwgY0GA1UdHwSBhTCBgjA/oD2gO4Y5aHR0cDovL2NkcDEucGNhLmRmbi5kZS9kZm4t
Y2EtZ2xvYmFsLWcyL3B1Yi9jcmwvY2FjcmwuY3JsMD+gPaA7hjlodHRwOi8vY2RwMi5wY2Eu
ZGZuLmRlL2Rmbi1jYS1nbG9iYWwtZzIvcHViL2NybC9jYWNybC5jcmwwgdsGCCsGAQUFBwEB
BIHOMIHLMDMGCCsGAQUFBzABhidodHRwOi8vb2NzcC5wY2EuZGZuLmRlL09DU1AtU2VydmVy
L09DU1AwSQYIKwYBBQUHMAKGPWh0dHA6Ly9jZHAxLnBjYS5kZm4uZGUvZGZuLWNhLWdsb2Jh
bC1nMi9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwSQYIKwYBBQUHMAKGPWh0dHA6Ly9jZHAyLnBj
YS5kZm4uZGUvZGZuLWNhLWdsb2JhbC1nMi9wdWIvY2FjZXJ0L2NhY2VydC5jcnQwDQYJKoZI
hvcNAQELBQADggEBADWXU9fwSJjf/evRvIFS2wD2p+H5FHS4AGURYk8IGBCIFqizbW7TWMVk
3Jh2UeUFVb4tya9saIAoBypcyxrSxUy1owcxyPNzn/vByXM2963tnl50B7K4nEsIdVjFLCgP
cfE3yYWH8ZZ4pNMOR0zs/+GgPJLE76/xyvG6Fss5hSoxPchybevlwcGCWN2dPkUfCZmu1e/H
kMVu9w6FPXRnZvpTS5TGHzBfLUnSfVXcz75CiuGLKd5gtQ+L+Lx4CKxKnXXUYvHW8XA/oyeF
EAOV3TygkcAp3xFv/3Ng++fishQJMGKKLm9VyG6wRQbBZB3hDZLjIFdre6PhX4PPEAR5kpUx
ggPEMIIDwAIBATCBnjCBjTELMAkGA1UEBhMCREUxRTBDBgNVBAoMPFZlcmVpbiB6dXIgRm9l
cmRlcnVuZyBlaW5lcyBEZXV0c2NoZW4gRm9yc2NodW5nc25ldHplcyBlLiBWLjEQMA4GA1UE
CwwHREZOLVBLSTElMCMGA1UEAwwcREZOLVZlcmVpbiBHbG9iYWwgSXNzdWluZyBDQQIMJfOJ
+jUx1Lbfj3D5MA0GCWCGSAFlAwQCAwUAoIH3MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEw
HAYJKoZIhvcNAQkFMQ8XDTI0MDYxOTA3MTIxMFowTwYJKoZIhvcNAQkEMUIEQFCsCMRzhuSK
A8zMF6xK9q7uLeJk7x5I4QJuI9RcZx7GjDkwVI5dQgP53dSdjx52kMXc8VEqJg68XK1BhLE+
CsIwbAYJKoZIhvcNAQkPMV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3
DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0D
AgIBKDANBgkqhkiG9w0BAQEFAASCAgAHGhoZKXgHs5swZD3hIoU3huxwfGIyojHLGl5y04l4
rT6RyPhEs/r7VPXrXlBcbPmWGa6/0svGcmnPMvvuuMEwWW8lU1v91u1VFxrxgb35sJ879z1G
EPcVgayaD0EVt122rCBDhtGku6A9YnXFeO7TehoBusMbqMVhrQ5XdHZcsHxAL+VtEZtXq2vj
abJXqe6PF3eoYwq9ZJK/OkhiNqQL1F1NeIaWwfc8e4d9pyqCs0HOFM/wdnjiCTvDtS4brRy/
+osfiTlZaJRWOxSLqiPBBo18eU8K1xcpLEP5uoBWyNzuv7nGbA1W8/T2FTzJ9TtvtTX+f0lI
B+LG6MoaW0x9b67Q3UvO6eEDMbjcCfcQlk5e8cWZxPaz37ygK6CjY/5wPRSkvgb1oNIKDcGm
T74HpFmrW4i83+mWJbsJttXLpNKKNBdyhTWXc8JibQx8EBEPPWDhCMZJ3w4pdUbNSupygEHx
oDQy2cjqqDkdPaXF5sTK1JxuT7gyfaghM5h3gt54s39zWf0+qOnJEHhmp6K0Csjfi7qH9s9u
//sde3OaN1eepBJ4ylED6nrEYtRg14kUfc9hg7RGcQQV0EqYrpVGSxA8XFqQuiHWv7XiQakM
cN3pqVI1sFKnSZLM4Dy2oj+jN9ssx0oLE/9yxN5ph3+Oi2ZLV+gCy1WOqiaB1N5s6QAAAAAA
AA==
--------------ms010600080806000304020608--

--===============1411774196428519620==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1411774196428519620==--
