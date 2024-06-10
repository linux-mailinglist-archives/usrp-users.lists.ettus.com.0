Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E9851901C34
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jun 2024 09:57:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4BC3F384F70
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jun 2024 03:57:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718006269; bh=YeTI/gO7Y5koD7jBLm0o6GULVHLTSmAsyjltcuo8zKU=;
	h=To:Date:References:In-Reply-To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=PjaXXWpfrRk3irq/qjhIX6QCWy93uzs+JfBh6WnzIMX40ZS56cKzsAAtvjFnTJaQ3
	 RCM+cr+b5zdMqU8u4BP036lDDIZm1V1dY18asysVGWUk1ayn3d1Tipd7XRKTdMqlwm
	 xUB6PoTuZjj7/VtjH+boJ8zqtFfgTZ6rRKglwthp2u/f3PnSgbQHNU4uWTQManAu1u
	 /4fh/H7ieHTb/wY6Bg6kPBPjGAdkrRqvJF/DBbhVWQlrMaK0NWJ0wfMbMMzdWUQvRk
	 3PD0T+VoF4kgruoLQji3DZj1anTWmFl7yclKnV7dkGszxJYR/8qWd5k1VE9D0xWnou
	 HgISH3bwFziLQ==
Received: from mailin.dlr.de (mailin.dlr.de [194.94.201.12])
	by mm2.emwd.com (Postfix) with ESMTPS id 8387738455A
	for <usrp-users@lists.ettus.com>; Mon, 10 Jun 2024 03:57:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=dlr.de header.i=@dlr.de header.b="Wbk3s1Nf";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=dlr.de; i=@dlr.de; q=dns/txt; s=052022;
  t=1718006243; x=1749542243;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:mime-version;
  bh=NM2W1Tb5aIa6Q0mVCwXlAVv3pBh38rYQ6uvXVtTjtMg=;
  b=Wbk3s1Nf6KbkAhS7NvPx0V5+qCcfHf4HwZB7VXPGJ/qeUvKcO21VOVh5
   HfL/iplefpeD/lPieFOF8qdwbNKV/Y8A1p+QZ0NBArKUfbJIJ3BxP+X6R
   WnrfKOyAr6P38YL0N1OYcrWv9D8jyXECuMQyiYITtb+SIO8pnU0ra0e/2
   Q4NRsYYQBR/0RNESsXRly3KL3QcjevqCcQNFrwStz04P5Ju0B7Zm4HvkA
   6RmKVmkYmFoF0I4zIWoL31Uhij2DkdUgQL4wXjlNtKjfNrYQwL1WSb3ue
   XolL8ts1oaWReBzK96iaLrW0zpTDfygqNg/rKTkSVkf4vuubs4d8PgPg0
   g==;
X-CSE-ConnectionGUID: 9/4QHyKqTMqmdekOSXnNhg==
X-CSE-MsgGUID: DdXiLP/bQiOhxmhli5c5wQ==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A2ErAACjsGZm/xaKuApaHAEBAQEBAQcBARIBAQQEAQFAg?=
 =?us-ascii?q?TsHAQELAYFAAYF8AoFkHYxWiU0DgROQfot7FIFhCQ8BAQEBAQEBAQEIAS4BB?=
 =?us-ascii?q?RAEAQEDBIR/AohnJzQJDgECBAEBAQEDAgMBAQEBAQEBAQYBAQYBAQEBAQEGB?=
 =?us-ascii?q?gECgRmFL0UNgkIegSaBJgEBAQEBAQEBAQEBAR0CQSgBAR0BAQEBAwEmIgUeA?=
 =?us-ascii?q?ggDEAIBCBEEAQEoBycJARQJCAIECAYFCBUEgmCCHA07FAatAXiBATOBAYR62?=
 =?us-ascii?q?wAjgUgBiBYaASRIaYhngk+BFYJyBzE+gkoXAYEnBQESAVcIhgYEgREwfIETC?=
 =?us-ascii?q?BYCAgICAgIDAiA6CRCBHCIKVyJWAWsEAgKCHAIDAgQ3B34hgScCFgNlcUoCA?=
 =?us-ascii?q?UVSgniBCIJfAmkOLD0DgS8XgxeBAj43KBwMgUyBP38mC4EeEIFZFIEGhkIsK?=
 =?us-ascii?q?HciAyYzIRMBDxE1ExcLPgkWAhYDGxQEMA8JCyYqBjkCEgwGBgZZNAkEIwMIB?=
 =?us-ascii?q?ANCAyBxEQMEGgQLB3aBcYE0BBNHgTeJcQyDLymBSSeEGktshAKBawxhg0mFK?=
 =?us-ascii?q?YEQgT6BZgGDVFGBSh1AAwsHZj01FBsGAgGBNacHBDiDRFGBCAEgQRqBNxYCL?=
 =?us-ascii?q?aFwgXqhVweCNotsggONMYd5LheXSJJxmGWNdpVCgVeDUQIEAgQFAheBZXwqc?=
 =?us-ascii?q?HFPggFmCUkXAg+OLRaEC8treAIBCDACBwEKAQEDCYZIglkBLIEcAQE?=
IronPort-PHdr: A9a23:xQK4nh08CopcGFLlsmDOtQMyDhhOgF0UFjAc5pdvsb9SaKPrp82kY
 BaOo6413RSXAs3y0LFttan/i+jYQ2sO4JKM4jgpUadncFsor/tTtCEbRPC/NEvgMfTxZDY7F
 skRHHVs/nW8LFQHUJ2mPw6arXK99yMdFQviPgRpOOv1BpTSj8Oq3Oyu5pHfeQpFiCS5bL9oI
 hi6sQHcusYXjIZgN6081gbHrnxUdutZwm9lOUidlAvm6Meq+55j/SVQu/Y/+MNFTK73Yac2Q
 6FGATo/K2w769XluhbaQQaR6XUST30anRVUDQfL6hH6RYrxvTDhtuVhwimaPNb5Qq4yVD+/8
 qpkUh7oiCMANz4k7GHaj9F7gaxHrB69oRF03ojZa5yXOvVjZKPQZdMUS3RfU8hMSyxPDICyb
 4UNAOoAIelXoJLwqEESoRu8HwSgGP/jxiJOi3Tr3aM6yeMhEQTe0QEnG9IOrW7brdXvOKcIS
 ++1y7TIwi/Ab/5NxDj97JLIfgo8rv6SRL99d9faxkYzGQ3flFqQtZDlMC2P1uQLq2WX8vZtW
 +KhhWMkqQx8viWjy8UyhoXViYwZ1F7J+ytlzYsoJdO1VVB2bMCqHpdOuCyXKYt7T948T2xou
 ys21rIItJimdyYEz5QnwgTQa/2Bc4WQ7RLjT+eRLS1li317fr+0mhW88VC4x+HhSsW4yktGo
 ylKn9XWq3wA2R/e5tKZRvdj5kutxCqD2xrO5uxHLk04j7fXJpAiz7IqiJYesUvOEynrk0vsl
 qCWbF8r+u2w5uTiZbXpu4GTOpdvigH7LqQugsu/AfkkMgQWX2iU5+C81Lr78EP3RrtEgPI4n
 KnZvp7dJsoVobS3DxFL3ogs6hmyES2q0NUenXkbNlJKYgiLgJXtO1HUOvz3EOmwj0ytkDdt2
 f/GIqXsDojRInTZjbvsfrlw51RBxAc9zt1T/YxYBq8ZLPL2QEDxtdjYDhEjMwyzxubqENF91
 p4EVmOPGKOZKrndsViV5u01IOmBf5IauDLnK/Q/+vHhk2c1mVkGcqaxx5sYdGi4Huh6I0Wee
 XfgnM8NEX0WsQomUOzqlFqCXCZLZ3qoWaI85y80B5+4AofZQ4CimryA0zmhHpBNaWBGEVGMH
 W31eIqaQ/sMcj6dItd9kjwYUrisU5Ih1Qq0tA/i0rZnM/HU9TMCtZL4z9V14+zTlQou9TxvF
 ciSzX2NT31pnmMTXTM5wKd/oUllxlie0qh4gvlYGMRL6f1GXAg0K4LSwvB8BdzqQQLBZtmJR
 U6+TNu/GT8/Qco9w8QWY0ZzA9qijg7M3y6tA7INj7KFHYQ6/K2Pl0X3PNt3nnPP1a09iAs7W
 dFXcHC9i7RksgzeDpDEu0GYjLqxM6kAwDPWsmyEyDmzulpFWi5sVKGQWHkeYlfR/8ni/FuHU
 qSjE69iNgZI18OqLqpRdsavgElaWeylM9PbMF62zjOoQxCJy7+Bdo/jamgH9CrGCQ4InlZA0
 2yBMF1qAjqosiTEBTtzHFHHb0f2t+Vz/iDoBnQoxh2HOhUyn4G+/QQY0KT0dg==
IronPort-Data: A9a23:QPXV5KzlAf6VdC2+ZOV6t+dnxyrEfRIJ4+MujC+fZmUNrF6WrkVTy
 mJODG3VaK3YYjfxKYskaI+/9U1T6pfdnIIwQQpr+FhgHilAwSbn6XV1DatS0we6dJCroJdPt
 p1GAjX4BJlpCCea/1H1aeCJQUBUjcmgXqD7BPPPJhd/TAplTDZJoR94kobVuKYx6TSCK13L4
 YOaT/H3Ygf/h2YqazpMsspvlTs21BjMkGJA1rABTa0T1LPuvyF9JI4SI6i3M0z5TuF8dgJtb
 7+epF0R1jqxEyYFUrtJoJ6iGqE5auK60Ty1t5Zjc/PKbi6uB8AF+v1T2PI0MS+7gtgS9jx74
 I0lWZeYEW/FMkBQ8Qi0vtYx/yxWZMV7FLH7zXeX4IvP9m3XUGLQ5uxrAEw1GrYo/MB3DjQbn
 RAYAGhlghGrq8aa7ZyVb8hJvp55AfnAeoIZpmtpiz3dF7AqTPgvQY2TvZkBjGt235seW6yED
 yYaQWMHgBDoZwBGKxENAZUjleSAin3lNTFVwL6QjfNvszKNkVUsuFTrGPbZSt2ufYJfp0e/p
 nLD/2D4XxpHK+XKnFJp9Vrp3IcjhxjTQMQUFbC0++RviUye3EQcExxQWVbTieSikFb7RslSM
 Vc8/is1sbN0+VC3U8K7VBq9yENopTYQX9ZdHeM/6QSVkPDZ8w3fB24YVDcHZNg88sM7LdA36
 mK0cxrSLWQHmNWopbi1rN94cRva1fApEFI/
IronPort-HdrOrdr: A9a23:3b4aMaGqSA/FR35RpLqExseALOsnbusQ8zAXPhhKOHtomszxra
 +TdYcgpHnJYVcqKQsdcL+7Scq9qB/nmKKdpLNhWYtKPzOWxVdATrsSj7cKqgeIc0aVygce79
 YET0EUMrPN5C1B7foSlzPYLz9P+rW6GeuT9J7jJj9WPHlXgo9bnnxENjo=
X-Talos-CUID: 9a23:ICoVOm9v4vOSUwZuQ0GVvx9TRvkFY17E8FLJJkO1CkFSeLuzSVDFrQ==
X-Talos-MUID: 9a23:2gtIggkcsTDHhd2wrQCtdnpOOPdpx5zpAnkMtpUWvsmANHF7Ziik2WE=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.08,227,1712613600";
   d="scan'208,217";a="10826515"
To: <p.niedermayer@gsi.de>
Thread-Topic: [USRP-users] Building OOT RFNoC modules for GNURadio 3.10
Thread-Index: AQHarbvHKBSEruRJK062pW6XIgPiM7G8KoeAgASPnbU=
Date: Mon, 10 Jun 2024 07:57:20 +0000
Message-ID: <d5f3ee014ca842f3ad27ba106d745144@dlr.de>
References: <b0de60b60daa4deba082bc68323b249d@dlr.de>,<1930090d-99c2-4c03-b420-f969b4206f0c@gsi.de>
In-Reply-To: <1930090d-99c2-4c03-b420-f969b4206f0c@gsi.de>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Message-ID-Hash: VGGQ5NXQTXLQTRA5U6OHDQUMDEF3243F
X-Message-ID-Hash: VGGQ5NXQTXLQTRA5U6OHDQUMDEF3243F
X-MailFrom: luay.raouak@dlr.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building OOT RFNoC modules for GNURadio 3.10
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VGGQ5NXQTXLQTRA5U6OHDQUMDEF3243F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "luay.raouak--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: luay.raouak@dlr.de
Content-Type: multipart/mixed; boundary="===============7887769799109390125=="

--===============7887769799109390125==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d5f3ee014ca842f3ad27ba106d745144dlrde_"

--_000_d5f3ee014ca842f3ad27ba106d745144dlrde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Philipp Niedermayer,


I had reverted to using gr-ettus with gr3.8 (which works with UHD 4.6 after=
 a couple of tweaks) and then porting the created blocks to gr3.10 but than=
ks to your valuable insights I should be able to make them directly now. Th=
ank you for your help!


Best regards,

Lu'ay

________________________________
From: Philipp Niedermayer <p.niedermayer@gsi.de>
Sent: Friday, June 7, 2024 2:11:01 PM
To: Raouak, Lu'ay
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Building OOT RFNoC modules for GNURadio 3.10


Dear Luay Raouak,


greetings to DLR! I faced the same issue a while ago and since the Ettus gu=
ys said that an equivalent for rfnoc modtool will not be realized in the sh=
ort term I invested a lot of time and helped myself by porting the Gain Blo=
ck example/tutorial manually to 3.10.


I now have an OOT module with multiple RFNoC blocks for GR 3.10 and collect=
ed some useful "Developer hints" in it's README (how to create a module, ad=
d a new block, implement UHD bindings, implement GR bindings).

Or you could simply look at how I made the "gain block" and related binding=
s in this OOT and copy/adopt it to your needs.

It's available here: https://git.gsi.de/p.niedermayer/exciter/-/tree/main/r=
fnoc-beam_exciter

I have an X310, GR3.10 on Ubuntu 20 or 22 and UHD 4.4 (but I guess 4.6 shou=
ld also work).


Generally, I found that using "uhd.rfnoc_block_generic" in combination with=
 properties makes things a lot easier regarding bindings, since it means yo=
u need much less code and no custom Python bindings.


In my_rfnoc_gain.block.yml<https://git.gsi.de/p.niedermayer/exciter/-/blob/=
cf444ed055274ec826bc0956eed0b94debbab912/rfnoc-beam_exciter/grc/beam_excite=
r_rfnoc_gain.block.yml>:

templates:
  imports: |-
    from gnuradio import uhd
  make: |-
    uhd.rfnoc_block_generic(
        self.rfnoc_graph,
        uhd.device_addr(""),
        "Gain",
        -1, # device_select
        -1, # instance_index
    )
    self.${id}.set_property('gain', ${constant})
  callbacks:
    - set_property('gain', ${constant})



And in gain_block_control.cpp<https://git.gsi.de/p.niedermayer/exciter/-/bl=
ob/cf444ed055274ec826bc0956eed0b94debbab912/rfnoc-beam_exciter/lib/gain_blo=
ck_control.cpp>


property_t<int> _prop_gain =3D property_t<int>(PROP_GAIN, DEFAULT_GAIN, {re=
s_source_info::USER});

void _register_props(){
        register_property(&_prop_gain);
        add_property_resolver({&_prop_gain}, {&_prop_gain}, [this]() {
                this->set_gain_value(this->_prop_gain.get());
        });
}

RFNOC_BLOCK_CONSTRUCTOR(gain_block_control) {
        _register_props();
}

void set_gain_value(const int gain){
        // The gain block from the tutorial only supports integer gain valu=
es
        regs().poke32(REG_GAIN, (uint32_t) gain);
}
int get_gain_value(){
        return regs().peek32(REG_GAIN);
}





Regards
Philipp

--
Philipp Niedermayer
p.niedermayer@gsi.de<mailto:p.niedermayer@gsi.de>

GSI Helmholtzzentrum f=FCr Schwerionenforschung GmbH, Planckstra=DFe 1, 642=
91 Darmstadt, Germany, www.gsi.de<http://www.gsi.de>
Commercial Register / Handelsregister: Amtsgericht Darmstadt, HRB 1528
Managing Directors / Gesch=E4ftsf=FChrung: Professor Dr. Paolo Giubellino, =
J=F6rg Blaurock
Chairman of the GSI Supervisory Board / Vorsitzender des GSI-Aufsichtsrats:=
 Ministerialdirigent Dr. Volkmar Dietz





Am 24.05.2024 um 11:31 schrieb luay.raouak--- via USRP-users:

Hello fellow usrp users,


I would like to build custom RFNoC blocks for use with gnuradio 3.10 but I =
have not found any documentation on how to do it for this version. I know t=
hat for gnuradio 3.8 and lower gr-ettus was utilized to create the grc bind=
ings necessary thanks to the RFNoC modtool but with the latter deprecated f=
or gnuradio 3.9+ I find myself in a dead end. Has anyone managed to find a =
way to circumvent this issue? Any help would be very much appreciated.


Setup:

Platform: Ubuntu 20.04
Hardware: USRP X310
UHD version: 4.6
GNURadio version: 3.10



Best regards,



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


--_000_d5f3ee014ca842f3ad27ba106d745144dlrde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html data-lt-installed=3D"true">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Dear Philipp Niedermayer,</p>
<p><br>
</p>
<p>I had reverted to using gr-ettus with gr3.8 (which works with UHD 4.6 af=
ter a couple of tweaks) and then porting the created blocks to gr3.10 but t=
hanks to your valuable insights I should be able to make them directly now.=
 Thank you for your help!</p>
<p><br>
</p>
<p>Best regards,</p>
<p>Lu'ay<br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Philipp Niedermayer &=
lt;p.niedermayer@gsi.de&gt;<br>
<b>Sent:</b> Friday, June 7, 2024 2:11:01 PM<br>
<b>To:</b> Raouak, Lu'ay<br>
<b>Cc:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Building OOT RFNoC modules for GNURadio 3.=
10</font>
<div>&nbsp;</div>
</div>
<div>
<p>Dear Luay Raouak,</p>
<p><br>
</p>
<p>greetings to DLR! I faced the same issue a while ago and since the Ettus=
 guys said that an equivalent for rfnoc modtool will not be realized in the=
 short term I invested a lot of time and helped myself by porting the Gain =
Block example/tutorial manually
 to 3.10.</p>
<p><br>
</p>
<p>I now have an OOT module with multiple RFNoC blocks for GR 3.10 and coll=
ected some useful &quot;Developer hints&quot; in it's README (how to create=
 a module, add a new block, implement UHD bindings, implement GR bindings).=
</p>
<p>Or you could simply look at how I made the &quot;gain block&quot; and re=
lated bindings in this OOT and copy/adopt it to your needs.
</p>
<p>It's available here: <a class=3D"moz-txt-link-freetext" href=3D"https://=
git.gsi.de/p.niedermayer/exciter/-/tree/main/rfnoc-beam_exciter">
https://git.gsi.de/p.niedermayer/exciter/-/tree/main/rfnoc-beam_exciter</a>=
</p>
<p>I have an X310, GR3.10 on Ubuntu 20 or 22 and UHD 4.4 (but I guess 4.6 s=
hould also work).<br>
</p>
<p><br>
</p>
<p>Generally, I found that using &quot;<code>uhd.rfnoc_block_generic</code>=
&quot; in combination with properties makes things a lot easier regarding b=
indings, since it means you need much less code and no custom Python bindin=
gs.</p>
<p><br>
</p>
<p>In <a href=3D"https://git.gsi.de/p.niedermayer/exciter/-/blob/cf444ed055=
274ec826bc0956eed0b94debbab912/rfnoc-beam_exciter/grc/beam_exciter_rfnoc_ga=
in.block.yml">
my_rfnoc_gain.block.yml</a>:</p>
<pre class=3D"code highlight" lang=3D"yaml"><span><span class=3D"hljs-attr"=
>templates:</span><span class=3D""></span></span>
<span><span class=3D"">  </span><span class=3D"hljs-attr">imports:</span><s=
pan class=3D""> </span><span class=3D"hljs-string">|-</span></span>
<span><span class=3D"hljs-string">    from gnuradio import uhd</span></span=
>
<span><span class=3D"hljs-string"></span><span class=3D"">  </span><span cl=
ass=3D"hljs-attr">make:</span><span class=3D""> </span><span class=3D"hljs-=
string">|-</span></span>
<span><span class=3D"hljs-string">    uhd.rfnoc_block_generic(</span></span=
>
<span><span class=3D"hljs-string">        self.rfnoc_graph,</span></span>
<span><span class=3D"hljs-string">        uhd.device_addr(&quot;&quot;),</s=
pan></span>
<span><span class=3D"hljs-string">        &quot;Gain&quot;,</span></span>
<span><span class=3D"hljs-string">        -1, # device_select</span></span>
<span><span class=3D"hljs-string">        -1, # instance_index</span></span=
>
<span><span class=3D"hljs-string">    )</span></span>
<span><span class=3D"hljs-string">    self.${id}.set_property('gain', ${con=
stant})</span></span>
<span><span class=3D"hljs-string"></span><span class=3D"">  </span><span cl=
ass=3D"hljs-attr">callbacks:</span><span class=3D""></span></span>
<span><span class=3D"">    </span><span class=3D"hljs-bullet">-</span><span=
 class=3D""> </span><span class=3D"hljs-string">set_property('gain',</span>=
<span class=3D""> </span><span class=3D"hljs-string">${constant})</span><sp=
an class=3D""></span></span>
</pre>
<p></p>
<p><br>
</p>
<p>And in <a href=3D"https://git.gsi.de/p.niedermayer/exciter/-/blob/cf444e=
d055274ec826bc0956eed0b94debbab912/rfnoc-beam_exciter/lib/gain_block_contro=
l.cpp">
gain_block_control.cpp</a><br>
</p>
<p><br>
</p>
<p><code><span class=3D"hljs-type">property_t</span><span class=3D"">&lt;</=
span><span class=3D"hljs-type">int</span><span class=3D"">&gt; _prop_gain
</span><span class=3D"">=3D </span><span class=3D"hljs-built_in">property_t=
</span><span class=3D"">&lt;</span><span class=3D"hljs-type">int</span><spa=
n class=3D"">&gt;</span><span class=3D"">(PROP_GAIN, DEFAULT_GAIN, {res_sou=
rce_info::USER})</span><span class=3D"">;</span><span class=3D""></span></c=
ode></p>
<pre class=3D"code highlight" lang=3D"cpp"><span><span class=3D"hljs-type">=
void</span><span class=3D""> _register_props</span><span class=3D"">()</spa=
n><span class=3D"">{</span></span>
<span><span class=3D"">	</span><span class=3D"hljs-built_in">register_prope=
rty</span><span class=3D"">(&amp;_prop_gain)</span><span class=3D"">;</span=
></span>
<span><span class=3D"">	</span><span class=3D"hljs-built_in">add_property_r=
esolver</span><span class=3D"">({&amp;_prop_gain}, {&amp;_prop_gain}, [</sp=
an><span class=3D"hljs-keyword">this</span><span class=3D"">]</span><span c=
lass=3D"">()</span><span class=3D""> {</span></span>
<span><span class=3D"">		</span><span class=3D"hljs-keyword">this</span><sp=
an class=3D"">-&gt;</span><span class=3D"hljs-built_in">set_gain_value</spa=
n><span class=3D"">(</span><span class=3D"hljs-keyword">this</span><span cl=
ass=3D"">-&gt;_prop_gain.</span><span class=3D"hljs-built_in">get</span><sp=
an class=3D"">()</span><span class=3D"">)</span><span class=3D"">;</span></=
span>
<span><span class=3D"">	})</span><span class=3D"">;</span></span>
<span><span class=3D"">}

</span></span><span><span class=3D""></span><span class=3D"hljs-built_in">R=
FNOC_BLOCK_CONSTRUCTOR</span><span class=3D"">(gain_block_control)</span><s=
pan class=3D""> {</span></span>
<span><span class=3D"">	_register_props</span><span class=3D"">()</span><sp=
an class=3D"">;</span></span>
<span><span class=3D"">}</span></span>
<span><span class=3D""></span></span>
<span><span class=3D"hljs-function"><span class=3D"hljs-type">void</span><s=
pan class=3D"hljs-function"> </span><span class=3D"hljs-title">set_gain_val=
ue</span><span class=3D"hljs-params"><span class=3D"hljs-params">(</span><s=
pan class=3D"hljs-type">const</span><span class=3D"hljs-params"> </span><sp=
an class=3D"hljs-type">int</span><span class=3D"hljs-params"> gain)</span><=
/span></span><span class=3D"">{</span></span>
<span>	<span class=3D"hljs-comment"><span class=3D"hljs-comment">//</span><=
span class=3D"hljs-comment"> The gain block </span><span class=3D"hljs-comm=
ent">from</span><span class=3D"hljs-comment"> the tutorial only </span><spa=
n class=3D"hljs-comment">supports integer gain values</span></span><span cl=
ass=3D""></span></span>
<span><span class=3D"">	</span><span class=3D"hljs-built_in">regs</span><sp=
an class=3D"">()</span><span class=3D"">.</span><span class=3D"hljs-built_i=
n">poke32</span><span class=3D"">(REG_GAIN, </span><span class=3D"">(</span=
><span class=3D"hljs-type">uint32_t</span><span class=3D"">)</span><span cl=
ass=3D""> gain)</span><span class=3D"">;</span></span>
<span><span class=3D"">}</span></span>
<span><span class=3D""></span></span><span><span class=3D"hljs-function"><s=
pan class=3D"hljs-type">int</span><span class=3D"hljs-function"> </span><sp=
an class=3D"hljs-title">get_gain_value</span><span class=3D"hljs-params">()=
</span></span><span class=3D"">{</span></span>
<span><span class=3D"">	</span><span class=3D"hljs-keyword">return</span><s=
pan class=3D""> </span><span class=3D"hljs-built_in">regs</span><span class=
=3D"">()</span><span class=3D"">.</span><span class=3D"hljs-built_in">peek3=
2</span><span class=3D"">(REG_GAIN)</span><span class=3D"">;</span><span cl=
ass=3D""></span></span>
<span><span class=3D"">}</span></span>



</pre>
<p>Regards<br>
Philipp</p>
<p></p>
<p><font size=3D"2" color=3D"#808080">--<br>
Philipp Niedermayer<br>
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:p.niedermayer@gsi.de">=
p.niedermayer@gsi.de</a><br>
<br>
GSI Helmholtzzentrum f=FCr Schwerionenforschung GmbH, Planckstra=DFe 1, 642=
91 Darmstadt, Germany,
<a class=3D"moz-txt-link-abbreviated" href=3D"http://www.gsi.de">www.gsi.de=
</a><br>
Commercial Register / Handelsregister: Amtsgericht Darmstadt, HRB 1528<br>
Managing Directors / Gesch=E4ftsf=FChrung: Professor Dr. Paolo Giubellino, =
J=F6rg Blaurock<br>
Chairman of the GSI Supervisory Board / Vorsitzender des GSI-Aufsichtsrats:=
 Ministerialdirigent Dr. Volkmar Dietz</font></p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p></p>
<div class=3D"moz-cite-prefix">Am 24.05.2024 um 11:31 schrieb luay.raouak--=
- via USRP-users:<br>
</div>
<blockquote type=3D"cite" cite=3D"mid:b0de60b60daa4deba082bc68323b249d@dlr.=
de"><style type=3D"text/css" style=3D"display:none;">P {margin-top:0;margin=
-bottom:0;}</style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello fellow usrp users,</p>
<p><br>
</p>
<p>I would like to build custom RFNoC blocks for use with gnuradio 3.10 but=
 I have not found any documentation on how to do it for this version. I kno=
w that for gnuradio 3.8 and lower gr-ettus was utilized to create the grc b=
indings necessary thanks to the
 RFNoC modtool but with the latter deprecated for gnuradio 3.9&#43; I find =
myself in a dead end. Has anyone managed to find a way to circumvent this i=
ssue? Any help would be very much appreciated.</p>
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
<pre class=3D"moz-quote-pre" wrap=3D"">____________________________________=
___________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"ma=
ilto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" href=
=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.c=
om</a>
</pre>
</blockquote>
<lt-container></lt-container></div>
</body>
</html>

--_000_d5f3ee014ca842f3ad27ba106d745144dlrde_--

--===============7887769799109390125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7887769799109390125==--
