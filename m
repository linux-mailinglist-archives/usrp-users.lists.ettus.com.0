Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C85900312
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2024 14:12:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3EA1F38554C
	for <lists+usrp-users@lfdr.de>; Fri,  7 Jun 2024 08:12:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717762358; bh=UCH+D/EGy/I5IgxEiQ930LyJSbNfCbgwe5kQSVAA8F0=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=SdNeTci87eRZ4bQGSSzN8Nm6aI2zDZ0dhxa6jBiulCT1Etia9Zn3/GMAfaF5x27ta
	 hAlvyruhgandZ7AcjSfp8HDcHPzE+FllkciGHyRS6RK2uir6mbVMhBW3PqHkAg5Iho
	 xQmrWRZyw77/VT29SQComeg0FQs4zx9FR62SLSzHzn9nCsuca8l+9zo3D8oCUH33Hw
	 MbV3y5/ShqTuaRMO9GBIkmcKckoUS8fgDQCJ02ksTrSGMQhf2VTmLW8xN1ZErax104
	 kvTe96Y1tWACk3ft1dUUymHZzAiu7XnxM4fD1gnnuc4eYRDQpXNZjEY3Fh2xNsp2gq
	 lIqWY8Z5Xuc0A==
Received: from lxmtout1.gsi.de (lxmtout1.gsi.de [140.181.3.111])
	by mm2.emwd.com (Postfix) with ESMTPS id 573B5385501
	for <usrp-users@lists.ettus.com>; Fri,  7 Jun 2024 08:12:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by lxmtout1.gsi.de (Postfix) with ESMTP id 36A622051049;
	Fri,  7 Jun 2024 14:12:00 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at lxmtout1.gsi.de
Received: from lxmtout1.gsi.de ([127.0.0.1])
	by localhost (lxmtout1.gsi.de [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id vllrW21TtEZR; Fri,  7 Jun 2024 14:12:00 +0200 (CEST)
Received: from srvEX6.campus.gsi.de (unknown [10.10.4.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lxmtout1.gsi.de (Postfix) with ESMTPS id 157452051043;
	Fri,  7 Jun 2024 14:12:00 +0200 (CEST)
Received: from [140.181.67.245] (140.181.3.12) by srvEX6.campus.gsi.de
 (10.10.4.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Fri, 7 Jun
 2024 14:11:49 +0200
Message-ID: <1930090d-99c2-4c03-b420-f969b4206f0c@gsi.de>
Date: Fri, 7 Jun 2024 14:11:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: <luay.raouak@dlr.de>
References: <b0de60b60daa4deba082bc68323b249d@dlr.de>
From: Philipp Niedermayer <p.niedermayer@gsi.de>
Content-Language: de-DE, en-GB
In-Reply-To: <b0de60b60daa4deba082bc68323b249d@dlr.de>
X-Originating-IP: [140.181.3.12]
X-ClientProxiedBy: srvEX7.Campus.gsi.de (10.10.4.97) To srvEX6.campus.gsi.de
 (10.10.4.96)
Message-ID-Hash: O6TWURCCV3FT2S4U77XNK2YCY3WDO6I5
X-Message-ID-Hash: O6TWURCCV3FT2S4U77XNK2YCY3WDO6I5
X-MailFrom: P.Niedermayer@gsi.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building OOT RFNoC modules for GNURadio 3.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O6TWURCCV3FT2S4U77XNK2YCY3WDO6I5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8839227446209618009=="

--===============8839227446209618009==
Content-Language: de-DE, en-GB
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha-512; boundary="------------ms020001010303050109040507"

--------------ms020001010303050109040507
Content-Type: multipart/alternative;
 boundary="------------oNtYB0Xjh78f2XoGOTvLzQJr"

--------------oNtYB0Xjh78f2XoGOTvLzQJr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

RGVhciBMdWF5IFJhb3VhaywNCg0KDQpncmVldGluZ3MgdG8gRExSISBJIGZhY2VkIHRoZSBz
YW1lIGlzc3VlIGEgd2hpbGUgYWdvIGFuZCBzaW5jZSB0aGUgRXR0dXMgDQpndXlzIHNhaWQg
dGhhdCBhbiBlcXVpdmFsZW50IGZvciByZm5vYyBtb2R0b29sIHdpbGwgbm90IGJlIHJlYWxp
emVkIGluIA0KdGhlIHNob3J0IHRlcm0gSSBpbnZlc3RlZCBhIGxvdCBvZiB0aW1lIGFuZCBo
ZWxwZWQgbXlzZWxmIGJ5IHBvcnRpbmcgdGhlIA0KR2FpbiBCbG9jayBleGFtcGxlL3R1dG9y
aWFsIG1hbnVhbGx5IHRvIDMuMTAuDQoNCg0KSSBub3cgaGF2ZSBhbiBPT1QgbW9kdWxlIHdp
dGggbXVsdGlwbGUgUkZOb0MgYmxvY2tzIGZvciBHUiAzLjEwIGFuZCANCmNvbGxlY3RlZCBz
b21lIHVzZWZ1bCAiRGV2ZWxvcGVyIGhpbnRzIiBpbiBpdCdzIFJFQURNRSAoaG93IHRvIGNy
ZWF0ZSBhIA0KbW9kdWxlLCBhZGQgYSBuZXcgYmxvY2ssIGltcGxlbWVudCBVSEQgYmluZGlu
Z3MsIGltcGxlbWVudCBHUiBiaW5kaW5ncykuDQoNCk9yIHlvdSBjb3VsZCBzaW1wbHkgbG9v
ayBhdCBob3cgSSBtYWRlIHRoZSAiZ2FpbiBibG9jayIgYW5kIHJlbGF0ZWQgDQpiaW5kaW5n
cyBpbiB0aGlzIE9PVCBhbmQgY29weS9hZG9wdCBpdCB0byB5b3VyIG5lZWRzLg0KDQpJdCdz
IGF2YWlsYWJsZSBoZXJlOiANCmh0dHBzOi8vZ2l0LmdzaS5kZS9wLm5pZWRlcm1heWVyL2V4
Y2l0ZXIvLS90cmVlL21haW4vcmZub2MtYmVhbV9leGNpdGVyDQoNCkkgaGF2ZSBhbiBYMzEw
LCBHUjMuMTAgb24gVWJ1bnR1IDIwIG9yIDIyIGFuZCBVSEQgNC40IChidXQgSSBndWVzcyA0
LjYgDQpzaG91bGQgYWxzbyB3b3JrKS4NCg0KDQpHZW5lcmFsbHksIEkgZm91bmQgdGhhdCB1
c2luZyAifHVoZC5yZm5vY19ibG9ja19nZW5lcmljfCIgaW4gY29tYmluYXRpb24gDQp3aXRo
IHByb3BlcnRpZXMgbWFrZXMgdGhpbmdzIGEgbG90IGVhc2llciByZWdhcmRpbmcgYmluZGlu
Z3MsIHNpbmNlIGl0IA0KbWVhbnMgeW91IG5lZWQgbXVjaCBsZXNzIGNvZGUgYW5kIG5vIGN1
c3RvbSBQeXRob24gYmluZGluZ3MuDQoNCg0KSW4gbXlfcmZub2NfZ2Fpbi5ibG9jay55bWwg
DQo8aHR0cHM6Ly9naXQuZ3NpLmRlL3AubmllZGVybWF5ZXIvZXhjaXRlci8tL2Jsb2IvY2Y0
NDRlZDA1NTI3NGVjODI2YmMwOTU2ZWVkMGI5NGRlYmJhYjkxMi9yZm5vYy1iZWFtX2V4Y2l0
ZXIvZ3JjL2JlYW1fZXhjaXRlcl9yZm5vY19nYWluLmJsb2NrLnltbD46DQoNCnRlbXBsYXRl
czoNCmltcG9ydHM6fC0NCmZyb20gZ251cmFkaW8gaW1wb3J0IHVoZA0KbWFrZTp8LQ0KdWhk
LnJmbm9jX2Jsb2NrX2dlbmVyaWMoDQpzZWxmLnJmbm9jX2dyYXBoLA0KdWhkLmRldmljZV9h
ZGRyKCIiKSwNCiJHYWluIiwNCi0xLCAjIGRldmljZV9zZWxlY3QNCi0xLCAjIGluc3RhbmNl
X2luZGV4DQopDQpzZWxmLiR7aWR9LnNldF9wcm9wZXJ0eSgnZ2FpbicsICR7Y29uc3RhbnR9
KQ0KY2FsbGJhY2tzOg0KLXNldF9wcm9wZXJ0eSgnZ2FpbicsJHtjb25zdGFudH0pDQoNCg0K
QW5kIGluIGdhaW5fYmxvY2tfY29udHJvbC5jcHAgDQo8aHR0cHM6Ly9naXQuZ3NpLmRlL3Au
bmllZGVybWF5ZXIvZXhjaXRlci8tL2Jsb2IvY2Y0NDRlZDA1NTI3NGVjODI2YmMwOTU2ZWVk
MGI5NGRlYmJhYjkxMi9yZm5vYy1iZWFtX2V4Y2l0ZXIvbGliL2dhaW5fYmxvY2tfY29udHJv
bC5jcHA+DQoNCg0KfHByb3BlcnR5X3Q8aW50PiBfcHJvcF9nYWluID0gcHJvcGVydHlfdDxp
bnQ+KFBST1BfR0FJTiwgREVGQVVMVF9HQUlOLCANCntyZXNfc291cmNlX2luZm86OlVTRVJ9
KTt8DQoNCnZvaWRfcmVnaXN0ZXJfcHJvcHMoKXsNCnJlZ2lzdGVyX3Byb3BlcnR5KCZfcHJv
cF9nYWluKTsNCmFkZF9wcm9wZXJ0eV9yZXNvbHZlcih7Jl9wcm9wX2dhaW59LCB7Jl9wcm9w
X2dhaW59LCBbdGhpc10oKXsNCnRoaXMtPnNldF9nYWluX3ZhbHVlKHRoaXMtPl9wcm9wX2dh
aW4uZ2V0KCkpOw0KfSk7DQp9IFJGTk9DX0JMT0NLX0NPTlNUUlVDVE9SKGdhaW5fYmxvY2tf
Y29udHJvbCl7DQpfcmVnaXN0ZXJfcHJvcHMoKTsNCn0NCg0Kdm9pZHNldF9nYWluX3ZhbHVl
KGNvbnN0aW50Z2Fpbil7DQovL1RoZSBnYWluIGJsb2NrIGZyb210aGUgdHV0b3JpYWwgb25s
eSBzdXBwb3J0cyBpbnRlZ2VyIGdhaW4gdmFsdWVzDQpyZWdzKCkucG9rZTMyKFJFR19HQUlO
LCAodWludDMyX3QpZ2Fpbik7DQp9DQppbnRnZXRfZ2Fpbl92YWx1ZSgpew0KcmV0dXJucmVn
cygpLnBlZWszMihSRUdfR0FJTik7DQp9DQoNCg0KDQpSZWdhcmRzDQpQaGlsaXBwDQoNCi0t
DQpQaGlsaXBwIE5pZWRlcm1heWVyDQpwLm5pZWRlcm1heWVyQGdzaS5kZQ0KDQpHU0kgSGVs
bWhvbHR6emVudHJ1bSBmw7xyIFNjaHdlcmlvbmVuZm9yc2NodW5nIEdtYkgsIFBsYW5ja3N0
cmHDn2UgMSwgDQo2NDI5MSBEYXJtc3RhZHQsIEdlcm1hbnksIHd3dy5nc2kuZGUNCkNvbW1l
cmNpYWwgUmVnaXN0ZXIgLyBIYW5kZWxzcmVnaXN0ZXI6IEFtdHNnZXJpY2h0IERhcm1zdGFk
dCwgSFJCIDE1MjgNCk1hbmFnaW5nIERpcmVjdG9ycyAvIEdlc2Now6RmdHNmw7xocnVuZzog
UHJvZmVzc29yIERyLiBQYW9sbyBHaXViZWxsaW5vLCANCkrDtnJnIEJsYXVyb2NrDQpDaGFp
cm1hbiBvZiB0aGUgR1NJIFN1cGVydmlzb3J5IEJvYXJkIC8gVm9yc2l0emVuZGVyIGRlcyAN
CkdTSS1BdWZzaWNodHNyYXRzOiBNaW5pc3RlcmlhbGRpcmlnZW50IERyLiBWb2xrbWFyIERp
ZXR6DQoNCg0KDQoNCg0KQW0gMjQuMDUuMjAyNCB1bSAxMTozMSBzY2hyaWViIGx1YXkucmFv
dWFrLS0tIHZpYSBVU1JQLXVzZXJzOg0KPg0KPiBIZWxsbyBmZWxsb3cgdXNycCB1c2VycywN
Cj4NCj4NCj4gSSB3b3VsZCBsaWtlIHRvIGJ1aWxkIGN1c3RvbSBSRk5vQyBibG9ja3MgZm9y
IHVzZSB3aXRoIGdudXJhZGlvIDMuMTAgDQo+IGJ1dCBJIGhhdmUgbm90IGZvdW5kIGFueSBk
b2N1bWVudGF0aW9uIG9uIGhvdyB0byBkbyBpdCBmb3IgdGhpcyANCj4gdmVyc2lvbi4gSSBr
bm93IHRoYXQgZm9yIGdudXJhZGlvIDMuOCBhbmQgbG93ZXIgZ3ItZXR0dXMgd2FzIHV0aWxp
emVkIA0KPiB0byBjcmVhdGUgdGhlIGdyYyBiaW5kaW5ncyBuZWNlc3NhcnkgdGhhbmtzIHRv
IHRoZSBSRk5vQyBtb2R0b29sIGJ1dCANCj4gd2l0aCB0aGUgbGF0dGVyIGRlcHJlY2F0ZWQg
Zm9yIGdudXJhZGlvIDMuOSsgSSBmaW5kIG15c2VsZiBpbiBhIGRlYWQgDQo+IGVuZC4gSGFz
IGFueW9uZSBtYW5hZ2VkIHRvIGZpbmQgYSB3YXkgdG8gY2lyY3VtdmVudCB0aGlzIGlzc3Vl
PyBBbnkgDQo+IGhlbHAgd291bGQgYmUgdmVyeSBtdWNoIGFwcHJlY2lhdGVkLg0KPg0KPg0K
PiBfU2V0dXA6Xw0KPg0KPiBQbGF0Zm9ybTogVWJ1bnR1IDIwLjA0DQo+IEhhcmR3YXJlOiBV
U1JQIFgzMTANCj4gVUhEIHZlcnNpb246IDQuNg0KPiBHTlVSYWRpbyB2ZXJzaW9uOiAzLjEw
DQo+DQo+DQo+IEJlc3QgcmVnYXJkcywNCj4NCj4NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3Qg
LS11c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20NCg==
--------------oNtYB0Xjh78f2XoGOTvLzQJr
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html data-lt-installed=3D"true">
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Dear Luay Raouak,</p>
    <p><br>
    </p>
    <p>greetings to DLR! I faced the same issue a while ago and since
      the Ettus guys said that an equivalent for rfnoc modtool will not
      be realized in the short term I invested a lot of time and helped
      myself by porting the Gain Block example/tutorial manually to
      3.10.</p>
    <p><br>
    </p>
    <p>I now have an OOT module with multiple RFNoC blocks for GR 3.10
      and collected some useful "Developer hints" in it's README (how to
      create a module, add a new block, implement UHD bindings,
      implement GR bindings).</p>
    <p>Or you could simply look at how I made the "gain block" and
      related bindings in this OOT and copy/adopt it to your needs. </p>
    <p>It's available here:
      <a class=3D"moz-txt-link-freetext" href=3D"https://git.gsi.de/p.nie=
dermayer/exciter/-/tree/main/rfnoc-beam_exciter">https://git.gsi.de/p.nie=
dermayer/exciter/-/tree/main/rfnoc-beam_exciter</a></p>
    <p>I have an X310, GR3.10 on Ubuntu 20 or 22 and UHD 4.4 (but I
      guess 4.6 should also work).<br>
    </p>
    <p><br>
    </p>
    <p>Generally, I found that using "<code>uhd.rfnoc_block_generic</code=
>"
      in combination with properties makes things a lot easier regarding
      bindings, since it means you need much less code and no custom
      Python bindings.</p>
    <p><br>
    </p>
    <p>In <a
href=3D"https://git.gsi.de/p.niedermayer/exciter/-/blob/cf444ed055274ec82=
6bc0956eed0b94debbab912/rfnoc-beam_exciter/grc/beam_exciter_rfnoc_gain.bl=
ock.yml">my_rfnoc_gain.block.yml</a>:</p>
    <pre class=3D"code highlight" lang=3D"yaml"><span><span
    class=3D"hljs-attr">templates:</span><span class=3D""></span></span>
<span><span class=3D"">  </span><span class=3D"hljs-attr">imports:</span>=
<span
    class=3D""> </span><span class=3D"hljs-string">|-</span></span>
<span><span class=3D"hljs-string">    from gnuradio import uhd</span></sp=
an>
<span><span class=3D"hljs-string"></span><span class=3D"">  </span><span
    class=3D"hljs-attr">make:</span><span class=3D""> </span><span
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
    class=3D"hljs-attr">callbacks:</span><span class=3D""></span></span>
<span><span class=3D"">    </span><span class=3D"hljs-bullet">-</span><sp=
an
    class=3D""> </span><span class=3D"hljs-string">set_property('gain',</=
span><span
    class=3D""> </span><span class=3D"hljs-string">${constant})</span><sp=
an
    class=3D""></span></span>
</pre>
    <p></p>
    <p><br>
    </p>
    <p>And in <a
href=3D"https://git.gsi.de/p.niedermayer/exciter/-/blob/cf444ed055274ec82=
6bc0956eed0b94debbab912/rfnoc-beam_exciter/lib/gain_block_control.cpp">ga=
in_block_control.cpp</a><br>
    </p>
    <p><br>
    </p>
    <p><code><span class=3D"hljs-type">property_t</span><span class=3D"">=
&lt;</span><span
          class=3D"hljs-type">int</span><span class=3D"">&gt; _prop_gain =
</span><span
          class=3D"">=3D </span><span class=3D"hljs-built_in">property_t<=
/span><span
          class=3D"">&lt;</span><span class=3D"hljs-type">int</span><span=

          class=3D"">&gt;</span><span class=3D"">(PROP_GAIN, DEFAULT_GAIN=
,
          {res_source_info::USER})</span><span class=3D"">;</span><span
          class=3D""></span></code></p>
    <pre class=3D"code highlight" lang=3D"cpp"><span><span class=3D"hljs-=
type">void</span><span
    class=3D""> _register_props</span><span class=3D"">()</span><span
    class=3D"">{</span></span>
<span><span class=3D"">	</span><span class=3D"hljs-built_in">register_pro=
perty</span><span
    class=3D"">(&amp;_prop_gain)</span><span class=3D"">;</span></span>
<span><span class=3D"">	</span><span class=3D"hljs-built_in">add_property=
_resolver</span><span
    class=3D"">({&amp;_prop_gain}, {&amp;_prop_gain}, [</span><span
    class=3D"hljs-keyword">this</span><span class=3D"">]</span><span
    class=3D"">()</span><span class=3D""> {</span></span>
<span><span class=3D"">		</span><span class=3D"hljs-keyword">this</span><=
span
    class=3D"">-&gt;</span><span class=3D"hljs-built_in">set_gain_value</=
span><span
    class=3D"">(</span><span class=3D"hljs-keyword">this</span><span
    class=3D"">-&gt;_prop_gain.</span><span class=3D"hljs-built_in">get</=
span><span
    class=3D"">()</span><span class=3D"">)</span><span class=3D"">;</span=
></span>
<span><span class=3D"">	})</span><span class=3D"">;</span></span>
<span><span class=3D"">}

</span></span><span><span class=3D""></span><span class=3D"hljs-built_in"=
>RFNOC_BLOCK_CONSTRUCTOR</span><span
    class=3D"">(gain_block_control)</span><span class=3D""> {</span></spa=
n>
<span><span class=3D"">	_register_props</span><span class=3D"">()</span><=
span
    class=3D"">;</span></span>
<span><span class=3D"">}</span></span>
<span><span class=3D""></span></span>
<span><span class=3D"hljs-function"><span class=3D"hljs-type">void</span>=
<span
    class=3D"hljs-function"> </span><span class=3D"hljs-title">set_gain_v=
alue</span><span
    class=3D"hljs-params"><span class=3D"hljs-params">(</span><span
    class=3D"hljs-type">const</span><span class=3D"hljs-params"> </span><=
span
    class=3D"hljs-type">int</span><span class=3D"hljs-params"> gain)</spa=
n></span></span><span
    class=3D"">{</span></span>
<span>	<span class=3D"hljs-comment"><span class=3D"hljs-comment">//</span=
><span
    class=3D"hljs-comment"> The gain block </span><span
    class=3D"hljs-comment">from</span><span class=3D"hljs-comment"> the t=
utorial only </span><span
    class=3D"hljs-comment">supports integer gain values</span></span><spa=
n
    class=3D""></span></span>
<span><span class=3D"">	</span><span class=3D"hljs-built_in">regs</span><=
span
    class=3D"">()</span><span class=3D"">.</span><span class=3D"hljs-buil=
t_in">poke32</span><span
    class=3D"">(REG_GAIN, </span><span class=3D"">(</span><span
    class=3D"hljs-type">uint32_t</span><span class=3D"">)</span><span
    class=3D""> gain)</span><span class=3D"">;</span></span>
<span><span class=3D"">}</span></span>
<span><span class=3D""></span></span><span><span class=3D"hljs-function">=
<span
    class=3D"hljs-type">int</span><span class=3D"hljs-function"> </span><=
span
    class=3D"hljs-title">get_gain_value</span><span class=3D"hljs-params"=
>()</span></span><span
    class=3D"">{</span></span>
<span><span class=3D"">	</span><span class=3D"hljs-keyword">return</span>=
<span
    class=3D""> </span><span class=3D"hljs-built_in">regs</span><span
    class=3D"">()</span><span class=3D"">.</span><span class=3D"hljs-buil=
t_in">peek32</span><span
    class=3D"">(REG_GAIN)</span><span class=3D"">;</span><span class=3D""=
></span></span>
<span><span class=3D"">}</span></span>



</pre>
    <p>Regards<br>
      Philipp</p>
    <p>
    </p>
    <p><font size=3D"2" color=3D"#808080">
        --<br>
        Philipp Niedermayer<br>
        <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:p.niedermaye=
r@gsi.de">p.niedermayer@gsi.de</a><br>
        <br>
        GSI Helmholtzzentrum f=C3=BCr Schwerionenforschung GmbH, Planckst=
ra=C3=9Fe
        1, 64291 Darmstadt, Germany, <a class=3D"moz-txt-link-abbreviated=
" href=3D"http://www.gsi.de">www.gsi.de</a><br>
        Commercial Register / Handelsregister: Amtsgericht Darmstadt,
        HRB 1528<br>
        Managing Directors / Gesch=C3=A4ftsf=C3=BChrung: Professor Dr. Pa=
olo
        Giubellino, J=C3=B6rg Blaurock<br>
        Chairman of the GSI Supervisory Board / Vorsitzender des
        GSI-Aufsichtsrats: Ministerialdirigent Dr. Volkmar Dietz</font></=
p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p></p>
    <div class=3D"moz-cite-prefix">Am 24.05.2024 um 11:31 schrieb
      luay.raouak--- via USRP-users:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:b0de60b60daa4deba082bc68323b249d@dlr.de">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div id=3D"divtagdefaultwrapper"
style=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-=
serif;"
        dir=3D"ltr">
        <p>Hello fellow usrp users,</p>
        <p><br>
        </p>
        <p>I would like to build custom RFNoC blocks for use with
          gnuradio 3.10 but I have not found any documentation on how to
          do it for this version. I know that for gnuradio 3.8 and lower
          gr-ettus was utilized to create the grc bindings necessary
          thanks to the RFNoC modtool but with the latter deprecated for
          gnuradio 3.9+ I find myself in a dead end. Has anyone managed
          to find a way to circumvent this issue? Any help would be very
          much appreciated.</p>
        <p><br>
        </p>
        <p><u>Setup:</u></p>
        <div>Platform: Ubuntu 20.04<br>
          Hardware: USRP X310<br>
          UHD version: 4.6<br>
          GNURadio version: 3.10</div>
        <div><br>
        </div>
        <p><br>
        </p>
        <p>Best regards,</p>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
  <lt-container></lt-container>
</html>

--------------oNtYB0Xjh78f2XoGOTvLzQJr--

--------------ms020001010303050109040507
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
HAYJKoZIhvcNAQkFMQ8XDTI0MDYwNzEyMTEwMVowTwYJKoZIhvcNAQkEMUIEQEeB6aLSeCM0
j1H6qNYFFf5AyhnCeF+jc3nOclInxx1tK3YX3zdUjZv6nIrSPdElb/vSYVmFbAi9qxhQi9Cj
O+wwbAYJKoZIhvcNAQkPMV8wXTALBglghkgBZQMEASowCwYJYIZIAWUDBAECMAoGCCqGSIb3
DQMHMA4GCCqGSIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0D
AgIBKDANBgkqhkiG9w0BAQEFAASCAgCFzcEcYF9JBb5SpPAGf5FDr/v5tfZGlxLFj8aaYn4t
9Cey/+KDyP1+2piC8divsH1PVSabqWjcjTkIa4gyBeJ8rStg8i0YvcYqB9LVIrtefNqmX9hz
lkeIUMmvZtHtQAY+oyEbaC58o1EuBtBVYCUo7O7L24IaCdMSDaVXcphUvWe/T3SQyG4Sgo0n
Vlb2ttDpECr5bedkifaOvmXJNdIS7QAw/hTDRjl0N1vgRLk0cmGCDoz+oO8B4DcdiM3emYx9
yGv3TpahXKkf8rAh4GGN2/o2hLaMsNrtrmzMB9jkUMV7Uz/eqdVipkbDS0VMzWFq5gNeALVn
9cIx9qAihiDZH/7hT4/tbiB9N+AyiHSx8kgPMS/kn1SDyxrHGqfE9pO8WzENm01WczDmzwTl
n4f5HsOzPB1DYuoZfsd+dyry4JBQ4AAwxdpnD9YIq+obREuOjJCJWTruZKzuNsSEoiWmOovx
u3yJC7HQ3vexZnopxh8w8e+8USfg7BfroAXWgl1dIA0dXPchQViBb+vmgjnaM3plcyluAhFS
L9mNfceZAj8O8Wj+9QW9+0Eoe0q3X5/erk9nrIbq1bs6rscx6HsB6THNTfYoCewlNDhhNnFX
3QS2w+upGzaXSBiBp4ePMEB5f3rpt63CiNwmjOS9slZDZg0+3oDb/1GnbYuCP7GkQAAAAAAA
AA==
--------------ms020001010303050109040507--

--===============8839227446209618009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8839227446209618009==--
