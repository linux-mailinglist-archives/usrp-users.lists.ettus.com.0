Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ItWKFnjzMmoJ8AUAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 21:20:24 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C136869C245
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 21:20:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=tNR98LyJ;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=FBbXSbbD;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9962E385E7C
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jun 2026 15:20:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781724022; bh=9t7Oj2+y4ZjRiqbXf5OeT88+UbYL5yhI54H5XukqZtE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tNR98LyJtvC6+mgCSn1/wAkcafMUXvkU4Ew8V0xkRu9Arb3pDBmszMxTccjinqoci
	 GvDJe//VfucAfHOux3JGmryzeQw15qVwYxGMuv6mnkefNrce6bChZKO/rPJWVyY899
	 DOHtdqndVmCo9g7RQpQGWK3Y667suo/Y49XwUEcbNiDFLK0E9oXwtEbBWPIPlvzpYS
	 fJRaidyAcGqw1FOqZ03QPbUnodJG1XKCECUUCyEYDnaEhg3ZwJbQFHpgxHE/YsCO6D
	 X2diNU6KPe1gGYZAPPsWBWNt9srKij8oOeveG2UhRCf8adjEKSver1JYmLRQtJ5Cdm
	 cLolVOnIxEvhg==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 5BF56385E4D
	for <usrp-users@lists.ettus.com>; Wed, 17 Jun 2026 15:20:18 -0400 (EDT)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-9157b949fc7so18260585a.3
        for <usrp-users@lists.ettus.com>; Wed, 17 Jun 2026 12:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781724018; x=1782328818; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gmwK1a/8tHRKhi3nxfN4YN2ZIt0JzP0mWTn0laLB+28=;
        b=FBbXSbbDlzC4QZsdv6S3jZBMT7cUefhdTbS+EN7jk7PC+DyPjINd80WiJ7FTFg0MsY
         p5uIKCRdLae6QddULuQS8DMJfINBeyi+I5j9SgJ8qBw1CJnMjl5EYGWFzVBo1fjH/SCT
         s/r5achQB864EqIfZRvmdvzJawmG0KtPLEk1KAroHoj3tLrRkyEGeWReBaxn73jGgli4
         jip3GHlokRIck3OoarcZ8be9J3ljJRt712claOXQyp0DWCE1FbgDnukRfkbqxBEdZXU+
         R0lSVkEP2qNCtyn/o4hBA6P9VbskSe8R05Ksjj2ZlzpHLXmnhxJqRmQLNGHY8v/Ml/AC
         IsFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781724018; x=1782328818;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gmwK1a/8tHRKhi3nxfN4YN2ZIt0JzP0mWTn0laLB+28=;
        b=Wgf1fqpI39gT3ZzvWTJOch43el1gN1TJaaMNfAAeA+svdWNKSpr5vbE4a0mb341Nj+
         xIJhKa0dfYjHi5/G4WJNIpfQ2XQ2ndIa1AlMmw1Ox9JmFkcZaOTWmj/4Dh8VpNDfS1XV
         VenXXkYVM+0l0lDYia7pNWMmUCvGQJxTJ3g4tkh31qIaqoOzVWBTgXIsI64sOWgr+xdk
         2Tb8xyUGq0gSO6K+mwwe0J4ioUdpFW1hS6GLsXBeGkah0o2iJD4kAry0/CEql5qGABdP
         vhZvYl+u1SztmZvGNIBtYx6tq3a03rIVyA7u3NOiAS2Q3E5FUISQJ9Yw13cr48WJ6Q0/
         pP5Q==
X-Gm-Message-State: AOJu0Yz5+gjjgCVcRVwPatHpbmfVDWc0Wo9WNb4f3TRPdDBhN2crZtH6
	yXPAWV9AVLFE0hj5WBwUNsycqCbVL+wN/Q3lT7wUzvgpDSn7wUq0DoLxC4XlgabJ
X-Gm-Gg: Acq92OHyVmafxoY2FE/PUNLK50GetfLyzO4RHcI0ScmsNM6VUjW8eAXbjDEEJnqeyFr
	oNuPRe6u3UGzMRb60DX3Wq9ARow7piJx0MEH08Bc7j9E/8XQ1cnQzzh9vSq2mIOIX8Gcp7DpA2E
	nVPHSTOe2Am8exJtCkE98CWwDHUIlAbcCvgHLviY+MajEUmiyJX80mzu6r66bArv8PAQSq/DcMy
	uXZlk74NdafM78Dv0ITl6yJhLIoxxp31vMuVE6p36yht5NrDRAO1keP8/0MeNNsXu7182OecrU3
	hoTYBIzbzcs1swectpu5JCVDcWaNRJxY3SP8XpqLv991Sj0URZ1HqFKqZoA37PDu7GPGKD5IuQ/
	geP6CtYvvKBsvK7pKxsSoPaLaTn2YSONYAh1peEPvGMr744ThnGzFdXVvoHF/ISo9cY9SNpNfln
	BtKkop6369Apds0Hsq7dmH
X-Received: by 2002:a05:620a:448e:b0:8c9:f8e5:9f12 with SMTP id af79cd13be357-91d8c4bb2d9mr906279985a.57.1781724017577;
        Wed, 17 Jun 2026 12:20:17 -0700 (PDT)
Received: from [192.168.2.233] ([174.93.0.178])
        by smtp.googlemail.com with ESMTPSA id af79cd13be357-9161a035849sm1816032185a.33.2026.06.17.12.20.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 12:20:16 -0700 (PDT)
Message-ID: <7bbb41bc-6be0-424f-8627-94e4a7d46ac3@gmail.com>
Date: Wed, 17 Jun 2026 15:20:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <PH1P110MB161782DC549A9384EA4DD9B9D9E4A@PH1P110MB1617.NAMP110.PROD.OUTLOOK.COM>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <PH1P110MB161782DC549A9384EA4DD9B9D9E4A@PH1P110MB1617.NAMP110.PROD.OUTLOOK.COM>
Message-ID-Hash: 4HTKASPWFMFZWUZ62O7XUSEWTE3QXPJ5
X-Message-ID-Hash: 4HTKASPWFMFZWUZ62O7XUSEWTE3QXPJ5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: FPGA Data Format
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4HTKASPWFMFZWUZ62O7XUSEWTE3QXPJ5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6498278571920903416=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain,multipart/related];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:+,4:~,5:~,6:+];
	RCPT_COUNT_ONE(0.00)[1];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[patchvonbraun@gmail.com,usrp-users-bounces@lists.ettus.com];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchvonbraun@gmail.com,usrp-users-bounces@lists.ettus.com];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C136869C245

This is a multi-part message in MIME format.
--===============6498278571920903416==
Content-Type: multipart/alternative;
 boundary="------------dCKupgDOcwszYmHjTjn8ej3n"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------dCKupgDOcwszYmHjTjn8ej3n
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2026-06-17 14:30, Barnard, Michael T wrote:
>
> I=E2=80=99m trying to get a handle on what the exact data format used i=
n the=20
> FPGA is. I understand that each I and Q sample is 16 bits long but how=20
> many of those bits are fractional and how many are integer? The=20
> documentation only states that the samples are SC16 but doesn=E2=80=99t=
=20
> specify anything beyond that.
>
> Michael Barnard
>
> TL Computer Engineer, Scalable Computing Group
>
> Applied Sensing Division
>
> 300 College Park, Dayton, OH 45469-0031
>
> O:(937) 713-4271 | C:(440) 622-6486 | udri.udayton.edu
>
> 1621527942842
>
> -----------------------------------------------------------------------=
-
> The information contained in this e-mail and any attachments from UDRI=20
> may contain confidential and/or proprietary information, and is=20
> intended only for the named recipient to whom it was originally=20
> addressed. If you are not the intended recipient, any disclosure,=20
> distribution, or copying of this e-mail or its attachments is strictly=20
> prohibited. If you have received this e-mail in error, please notify=20
> the sender immediately by return e-mail and permanently delete the=20
> e-mail and any attachments.
>
> UDRI Proprietary - Unprotected
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
They are twos-complement integers.


--------------dCKupgDOcwszYmHjTjn8ej3n
Content-Type: multipart/related;
 boundary="------------iredMF1JD00NyPlSdp0LH0ML"

--------------iredMF1JD00NyPlSdp0LH0ML
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2026-06-17 14:30, Barnard, Michael =
T
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:PH1P110MB161782DC549A9384EA4DD9B9D9E4A@PH1P110MB1617.NAMP110.=
PROD.OUTLOOK.COM">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator"
        content=3D"Microsoft Word 15 (filtered medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Aptos;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;}div.WordSection1
	{page:WordSection1;}</style>
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">I=E2=80=99m trying to get a handle on what=
 the
          exact data format used in the FPGA is. I understand that each
          I and Q sample is 16 bits long but how many of those bits are
          fractional and how many are integer? The documentation only
          states that the samples are SC16 but doesn=E2=80=99t specify an=
ything
          beyond that.<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">Michael Barnard<o:p></o:p></p>
        <p class=3D"MsoNormal">TL Computer Engineer, Scalable Computing
          Group<o:p></o:p></p>
        <p class=3D"MsoNormal">Applied Sensing Division<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <p class=3D"MsoNormal">300 College Park, Dayton, OH 45469-0031<o:=
p></o:p></p>
        <p class=3D"MsoNormal">O:(937) 713-4271 | C:(440) 622-6486 |
          udri.udayton.edu<o:p></o:p></p>
        <p class=3D"MsoNormal"><span
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;colo=
r:#757B80"><img
              width=3D"216" height=3D"47"
              style=3D"width:2.25in;height:.4895in" id=3D"Picture_x0020_1=
"
              src=3D"cid:part1.IhdlE2cz.rZuyCcSW@gmail.com"
              alt=3D"1621527942842" class=3D""></span><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
      </div>
      <div style=3D"font-size:8pt; font-family: 'Calibri',sans-serif;">
        <hr>
        The information contained in this e-mail and any attachments
        from UDRI may contain confidential and/or proprietary
        information, and is intended only for the named recipient to
        whom it was originally addressed. If you are not the intended
        recipient, any disclosure, distribution, or copying of this
        e-mail or its attachments is strictly prohibited. If you have
        received this e-mail in error, please notify the sender
        immediately by return e-mail and permanently delete the e-mail
        and any attachments.</div>
      <br>
      <p
style=3D"font-family:Calibri;font-size:8pt;color:#000000;margin:5pt;font-=
style:normal;font-weight:normal;text-decoration:none;"
        align=3D"Left">
        UDRI Proprietary - Unprotected<br>
      </p>
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
    They are twos-complement integers.<br>
    <br>
    <br>
  </body>
</html>
--------------iredMF1JD00NyPlSdp0LH0ML
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Id: <part1.IhdlE2cz.rZuyCcSW@gmail.com>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAANgAAAAvCAYAAACBtwRMAAAAAXNSR0IArs4c6QAAIABJREFU
eF7svXeUVWXy7v/Z8aTO3dDkYEIwB8wZFUdARQXDKIKKYAADoKIgSBAEVFSSAQNgQJBgQsUc
UHF0dAwzRpTYhM4n7XxXvaed7/3dde8468eaNf+4kYU0ffbZ533fqnrqqaeqtV8OPjgym7OY
hgaaRRR5BJqJYRiErgMGu3WFYYhh6oQEGKGO4UV4aGhdqyg6ZE/0Xsej9xpCQr5H09BDeQ6f
UDMI0TCBKArQMMi+9iS1V9+NGYQEGlQtmkr8xPN26/n+ePEfK/CfXAFtW+fuUWDo+JaJFkFM
8wiIMEybIIggDHbr/QPNwtIgiMTEQnQdItdX99Z0i7ivYx5VSvGYW/AP70USGz/QMYyQKARd
1/8wsN3agT9e/N9cAa2m6z5RFIvhOwG6l8c2dfJeDnQDIgNds3fr+Tx8ND1QxmtEMdBjREYE
ZNGDDI5ZhO0F5IIUHe++COPC6zG0FIhdm15LVP0jgu3WJvzx4v/aCmgb9+0eSZQI0xnsTmXE
DjiAvJZDD0P0CLTI262Hi2sh+UgimIEh0BAIcg7BxkbcX2oxAo+gqh2xuq3ksOg84wbCC6/E
CzViOgok/gERd2sL/njxf3EFtK177R8Fho+v6SQuO5PKa8eiFVdghMjpLvzejcuLQDIwLRTg
qRMYBjYebPge96sv2T7nPvh8C17XKuytGcKUSeWa5ST33LcQxJC88I8Ithtb8MdL/4sroNV0
PyTy/DSe71Iy4jwqbpwpmRKGB77hYGqx3Xo8RwMBmZpYSxQRGh6+pmFJNHMEKW6hZtRVWK//
gBcvQcs4eP0Pp8P9i0EPwDD+MLDd2oE/XvzfXAFtyz77RQEOenOeshFnkxp9H6FhqLPtWT6W
Mo/duMKIMPLRDAmGViG38iG0Qjw9wIosonQjv/TtQ/LnX9GNFF5oUfna4yS6HSosxx8GthvL
/8dL/7sroG3a96AoMMGsy1F+XV/iY2fhERGL5GALQaHv5hMKbSj/BXhCwwvsiwpfU5f8m5Eh
u/xZ0mOmkTd14p5J8Q39iF0/GUOz/zCw3dyBP17+31sBbUu37pHkRmE+T/HwP1F2y4PqaXwt
wIwMmv/xLvaXf8E1IwLDoiSXIlfkYzb6+ElNESHKTqKW/9EiNK2QuKk//Yi0kScRK8Iq74Z9
7DH4QQwzAscMsSONSPPRIoutZx6D9fkuvISGdso+tH1spSI5wtBH10wyrz5BwzUz0XxfCE5a
PTkN+8Rzf2f1fCQLDAIdZ+dP2H/9FIo1wuMGYDkeXszADk3c7z5A27QZrWMHtO7HQQhSGhQH
kNHSxDWrwIKqLzWjUYzvZEg/eCtRXR0loydBRVdV61OX0YxDsXIolvxdaneIg9HQtDxocXkL
9EhCukFW90jKoxqGyodDQmwpkxjC5kKg+Ri+WciJdciHWeJGXOW16nmCYkJDAIJPfskDuH/7
nIrBI9H3OYJIC3EMnRguWmiq+5thqNZQnkGeOVCP7aj7hUEOWyspfFZFNMklaUQRlimfo+Af
TfV/Br6nY1o58iSIyz/Ibz/EtXVseYcN/2DrS/dTvC1P8cVXEex/LIYv++8TC8TB6jg/f0L0
/QZC28BKe9iJGA2JkNI9D8Gr3kfhKJ9CyuLiYYcWnh5iRRGBFqFrLZ9FooWsl+FiRDaELpiF
VxN6oFt4kYkcTTOSdMXCxFF1Wp84Bh5GGEPKsboWEgY6up4lknvpQrhBJKVaOZNERLqlnifm
mThmmpgw4ITkMYn7Eb9rYE3TxpJZuALPjQhtDduxyJW4xB0bzQkJTDkV/3P9Zly/GZgZivFp
+EFAPuFQeuJBtLr5DvL7HI7tNaFbJYSq9Gyxa3AfePsXHPl7z460f/plsOO7ZWBBEKC3GHD6
hSfZfPPdJHvuQafHVhLFY4UD5mSonT2OxsdW0OrPAygeOwPXAjNw0fV44cBE4OlgReBqHqYs
8jd/4cfzhlG2K4v1wNWUXjxcbZIVGEjuGcMjr+eJh3EizVInVY6kJsar53Aim5gWEUUGgaYh
S+mYEMt5ELPwdalURHiWrIhJ3MujWzG8ICAy4thBgOsb2CrJdQiCGEbTTr4/5AjKPB19yGmU
T56HIQeFLNG3P0FVEqOiG5Jku4REWkDMs8EwcXXQwwBTSjQuhTWIfMRnmHJwdR/EyMXADYgH
Lj4hZhQnMnKgJYiQr9nKIAQJsfFnNpw3iNKaLTQkEnScfAOJgVcSahFGAK4RoOUyZBbMJnP/
UlUvNXVbkWy+EWBIvXTwCbQafhP5tnuRDDXC0FT1VF+X3ZP3N5V1RYav3lPHIMLHiCLlTMR5
q5THhLjvg2kSRGkMitTrsn4TyR+/I2pTBZVdReeAY2YxSOKHoUJxptwvJzdwkHzH9QwsKyAM
CwKKnKljYWCKw5BnN0NMzfl9A9s5/xaapz5HPF6GZoXKu+TMNJZVTJjX0RXd+D+XcIXK7bVc
4hn0MEJOQRCmiQcRu/bdix5z74c9e6hD52ku4uuaxl6Ks+xLXC+HuXcV7Va9AUWp3TKwgjPN
EOkxwlcepvHKGSR796D48ZcIcxDGIgw9JDPnTmpmLqT6uosoHjMDN9SwNTn48ohZNJJokYuv
2WqxHfHf9VsIb7+aRhfaj7iRcN8jcGMp5cXlAGnklAJFvKAnBqbXYlJKgKkOsqEbuPIQuokt
RQy1sSESJ2WTXN1UQhozD35c+WDiLWc8Io9OvCWiOphRjLwG8QzkHhzBju+/odWlw9FOPgfL
szG3f8fPJ/YndereVM9fTS4ISeiQMyLMSMOSqOmrlFftieTNEhZCOTSuT6Sb+GYzOsVIGVMF
V7V3Hobk0fKnbxGa8rkjtEBXhNbOx8ZhTVlOePIBlA8ahr53D7x2HdECFyuKF8KjAc0PTCAz
63HMI/fAOvQQvOZ69HQjmVXfohlZrO7dKX9kBna7g0HzyAcWMSNDHpuE1IFiNq4mzjKv7heZ
tsILfuCrv8cE9Yiz1JXvUG8rUVwsL/jrR+wYeDnGgNNoM3W+WudIy2J5SfWNvqyHUjRlMMIU
uh6Si0Ik9plaiCaeUAMniDBt2XEPAkut0e9GsIZHxpKdshIrUYzbVItZVI7v1BHq4pFtCIQK
bIGD8vQSqxW2kM2JlFeJMJVESg5mXCsnbzdQ1PcEkvctVJvlt2xS/V1DyTz6IUQ+Zucy2r78
9m4bmNi2QDJPDuPrT1I3dDbaGZ0oeWgViUAjMtJ44knnzaL2vqW0vvZ8EjdOVhsReXlcA2wp
lAcpXC3AVljEIfJsNMsoQAmBf4aOq+VIRAnluxWrE+i4euHw63IoHIu44MUAsjYk8yHEdQVj
HD2SzJd4PiS09AIp5OeJTAMXi1jWhYRN5LuElo3uOGDF0DwfbBNHq1ce2YwssvgkBPbKwQo8
fMPC2PA3NpwykJIzD6ZqztOg6TihSyyyiUIf1xII6RGGFrraR9lDV1m6HEwBUCYeDgliuQxu
IoUdOvh6DNMPVLSVmGjpCcygCdcoEfBIetqN1D30Kq1mj4ZzrqRI4TdTrVuk5zCcBH7Mp2H+
HTTPXknxiEupuG40kbicMCT8/jMaRt5G5rufMc8/mjYzliiDkT2zBRHooWK8A0tHjzJo8nl0
iygoiBQ0WV4cjMgg6+skTXlQMUKLyJAzGuK9s4adg2+k+KozKbvtbnVWBHqKwYoRqvfwbaW9
QMuAFytEQXw8LVJOL5JoqltojotjG5iappRLv2tgux66GXfaKrQoJGflqbz+SowSm8DNExPs
bMYLh0zXVc6l6YJvWwpo8vfIx0qW4G/azs7lT2NssXCy9ZglZXR8by16Zet/5he1M4aSnvcu
VszA6FRK69feRrMTuxXBCAUnC8SKE736NLVXziJ1ZleSDy9XJI7tWWrDMvPvpHbmEiqv7U98
zBT4eT0NixZRedyfaPJ2kn52OTHTInH8USSG3IwWxfDDPO7ciWTdNJXXTseNxwgmXKugV+k1
48i3aUsijCl33/zkDHK/fkLV2aPQDz0WmuuoXzaLhudep1g84cnHkbhgALE9DiSMEkQNm8nM
vQ+zYzuio4/BWbmcmJYhfvMcVZxvWjKL5qdWoDk+1lmn0+qqqeSL48S9EP/52TT+spmK884j
2PtYMo9OJ79qNbkfN1HeuRP5ngdQeelAzL17UTv+Aki0o+Sqy9BaH6xgqqBBZ83T7Fr3Gu0P
PBzOu4pItzFDDVdkdOJkvHrSLz9PsHo1+dpdsEdHyvqdR/LEAfiGjpHLETxwG+n315H+bhep
I/aEffcmddYA9INPQqMZIyyGSOCuT3b+ONJ3LSV1wyUU3TRJZXjKFiXi/PgJ9b0H4/sunV59
jnT3gygiS/6td3CfXkJ647eEle1InH0aqQtvIJ6zyM2/FadxO2V9L8XreQqSqni6h/3tX2ha
vQq/KEb5iInkZo9j2+tvEf+2Hu3AtpiHHEDZwAHY+5wgQQht49fUPDeX4vc/o1mUTaceRZvz
byBo11kFDX74km1PP4x5TA/KtSrqn34GywarZzdSw2f8voGl59xK5p4XCAIPrVUFbd98Cbe8
lcK04gwUrhCD+mfk+t9YR/FSQF48CDruAxNpvl/ulcHQY7R5cQ5aj14FkiMwqZ96BdmHPsBM
mNC1jIqX12LZyd0yMCFffC1PSBx/zePsuHoGFaftQ+kjKxRadyIXTYuTeeR26u9aQrsR5xK7
fjrB2y+xbegtisXMmhbJdEhgNeCZCdrcMoTEVbei+x413bvR4Gl0++Q1aN2Bzf1ORf+2lsSN
F1Jx3UR8LcT/+Su2nj6QuO/S+uN3oHUZu64cSrDmc3TbRuCeL4Bmjz3p8PBUgr17wsYf2HzC
ScT8IrxSEytt4new6PDWOvJz72LHvKcxUnFiFRq5H9JY3Supfu41cuXlNA3ohfHJRioXTEY/
cyA7+/fBXP8lmfJ2xHb6NKaaaTVhGKUXj2HT+aeQ+usOwsvPoHTCPViCTSOfX44/heTmTSTn
T8Puc75QLsRC2WopkLp4U+6g5olVxKKQjF2F4TQqGFlxk6zfRPTGZjYceRy6Y1FqWQT5Wpo1
gw4zxhAfMKTA1MiZCXQFw5sfGkv67mUUjRxA2U1TUYmfRJ+onkArofmiU/Hf3UbpA6OJnXsF
O5c+SHTrg3iCAARtaGUEzi5KRl9D+eAhNMy7j7rZTxHftz2t176KSQopRzVcP5jcc69TdfvV
WNdMYUtXcSp1GIk25KgnFpq0mnErZv9LyX+/jsbzh+HUBsTtCN+0MPKQPcCm64OLCPbphrfm
aRqG34Un2lkjJHSL0fwdRFYlbUcP+H0Dy86dQO2s1fhhM1bcou26N4iq2ivD0nU5oqJ3b0GF
Qq8U0OE/WUUxLPJ1RIkymh69m9zkZ4miHJGZpGrRDOxjT1cRTO5TP2EI3hPrhdYi3LOcVi+8
jpko2i0DE7ytlCPCVr78FDtG3oV1cjdKH3kOQ2Cj7klRjsY5d7Bz9jO0v+EsEiNnwtoX2XTF
LSI9Jpo9mjZHHk3di6sI71pN0Dmg+O3PSBomdUcfTrYmT4e3XiHs0gHvw2VsH3Q7qf3bU/ni
6xDEyCyZRvaOJ0leejKpKQ/QNGMSO+cuovqWQdjXTCakgWDFcmpHT6b4/NMpvWsmerNHQ+++
+DVpGlMBba7+M8bR3dAPP5uaLvujJ4vp8M17uCRonHI94fovKX98GXZlGxquOYfs6z9SuXA6
seN74/zyV3LvvE7t1EepOPFgrGuHYnfaC7u6G9HfP2Vjn0uw4iZt31iD164d1prnqbnyRrST
D6PN4hcF6OMFQl1ItPdJv7SYxpGjofU+lM++jeRePWDdZ2y+YTy6maNkycPoR55B8tv3qX1s
HvnV35G49HBSF1yM3WE/olgFrmkoUXlcHEsEDfNuI3v3UoquP4eSUdORExEQEI90nMCkYdo1
ZBeupWzCZSSH3E5Tv1PIfL2FipVPkDz4MNi5g+2HnoplWLT+5W9E6QZ2/KkX4cY85Uunox91
NmzdwNbjz0BPJen0wVsEqXKi7z8k/fIz1C94kaqzj8TqdynusYeRjOLsOOsC9C9/RBtzLlXn
X6XKRVvnzMR4eh1enx50fnglwXvLaRg0gWbDoXLaSEqO6c2OtxbD2NfIJRt/38Ca597Mrlkv
YBk+SQ3K31mD1rorWKai4CORyv9vl2zGb5dQ0nlJzIOQMNJpeHoizROfI+7nyWHSbtVC7IOP
x9c9JGVsvmMw/tOfEwhG3rOCdi8IybF7BqYeR/SOksu8vJQdIyZhn34g5QueIu6bRKaHFhh4
825j54xlpEb2p2jMLLR3XuSXoSMoPe5gKh5foT5SEDjs3OtYQjdH+41fERgeW086Bn7O0e7D
FRgd9iXSdLafeAzur420fWkB5n7HsavfMfh/qyf1wTKKOx3AtqMPhZ0Bpbf2g1ZdhKvHyuSo
GXUvulFK641fKohVI8l+PqTzygWEB59AEJjYYSO79jsV191F8tqBFB10GFHPI7HKWuFqSewo
S931l5F56XMqn5hG8oT+5IXf+uojdvQbTOq8gymb8YxiM4TI0COTbTeeTbTiU+IzxlN6wZXU
DRtA+o1vaCsG2qs/miSyuk9AjCCA3LWXs+PNt+kw6xaMvsOxRZ0ThuQXTKF+ylMkR/SlcsQD
BEUh/v23svHB52g/+VYSF10uXByWqidEYAV4oYcVJWh8eALZ6csoGdGX5KhpaL/VEADX9Aiu
vYydr6yn8o7BpC67lTDXRPjrBqhui/7tp9T//AXZ8UuIW3HK31+B0W5v6h+eRHb6k4SnH0yn
Bc/iL7ifHXc9Tum1xxC75RFM9bk0cq89R/aqOzFG9cEYOYPivI/7zafUnTuI6KCuVC17BitW
UtDTRiFbex6GtcOl1Q+f42/4OxvPGkDqyG5UL35FsZKhFlJzzCGwLff7BtYw93aaZj6LJnWg
mHi55dBx3xZ628eJecSihArzkpQKvFDiKN3FbVHi216ewIrT9OQM3KlLCDwf383T9uWFWAef
KDFC1dx2TRiKv+hDfGFo9iqm+sV3ILn7LKIWZiBIwdqFbL3qHor6HUBs/lPEIiEHXEQdmX14
CrtmPEWbK/qQGDuV7LurSF8yEfPiwym962E0o0CBbzuoN67m0PnvX+LHdLYfcwRRTQNt3nqR
oEt3Yn5I3aJphLcvxZp+CaV/HsqGPU+kqEcZrV55FScqovaYQ9C25oRrU44mIeRB3CNRAkZJ
B1q9+BpRKs4PXbuRKEvSfv1f0SOPyJYsWyf70UrSE2YTfbuVwNQJzIjqscOJrhiBEVo4N/Sn
9qVvaf3EOKwTLkEyp/DdVWwfOJ6ySw6kaObylkJ/hG9omJ+9w5ZzhqMfUU7r22eyY8AV6O0q
qH7/fUWfebqLFdqEuojAk2w8+0jMv+dp8/oTeHscQixwFeHlf7SamovHkOyzH0XzlimqvmH6
jdQ/vJaqW8+h+IrpisyR1oqYpxFYkaK4hVzPPzSenbOWUn7dAIpumIihJRXbpyoQXp6Nxx6O
tjlLq2X3Ej/6HPJbvyPz4EQyK9Yj9KnAUysZEcUTtF+zArfNHljpOn495iQSOYOyRbfTcPcc
0t9sofN7b2K0rVb0pZRMmpYuoPn2ORQPOZHk+IcUmZNd8xz1V07CHnI0VZOfUBxEXlf0D9mB
Z9L06fd0+uR9crlN1B/3Z4rP7UnqviVEuo6RaWJb315oP+78fQNrnDeOxhnPqFxEixn/NDDF
HOaEP5ZliBFEGYyEgWMVo/s6Upqw03X4URozUUW09Xvq7rmL7KpvCMNmUlUdqHxnBVpp6/+8
gUkNS/plPnqRzReNwuzegY4vrcYxSlRdSw/TNI27icYn36J87CWkRowlePd1tl0xllTf/aiY
/RRIgbZxK9sPPx3LCGn9t78R2lDb6yi8n3K0W7eaqMNeimezt2zi+5P7UHZANeE+++ItfZOi
ycNIXHgzcTdk+2knkf51B11emI3RYW/CBp8wbuF//xm6MIXHnE3s1xo2n3QkpEpp8/Vnqk5o
OKFQmoWyw85deN+uI/uXv6A/+gp1kUan5x5DP+Rwmm64isyKz6leOAm7V188oZrffpn04HHY
FxxIyczFqrSqS70xkuqNR+3wy8i98leizqXEfmnEnnMTZWcPU+ynuCCB+oY4z8hk6zX9CV7+
jDYLp2OdciGOFH8Ci/yS6aQnPaoOamL0QoQVb558HflF71J6y7kkhtypkIBvSECMZElVxUou
596J7HjgeVqNuoTEiDHqfXBd4d3ZMvM24ve/Tb5HjPavfSLtGPxw4lGU/+qTmngZxslnYXes
ZvNhvbHdLCXrVhCv6qHIq/oF40mPXUjy6O5kv9hAatAxVNy5RFX/5cw6RpLcsjmkx8ym6saB
pEZOU8+T/fRdtl9yOYmDymjzzCd4pgDaGHbksfmEQ4m2hVT+4yP0H/5GwxkjMPofRNXsR4hw
cOqaaeh3LtqW9O8bWPPcO2iY9TRSRhMDa/fm84Qd9lG1DjIZ6gaeR5BuJBdlKel/JqXXT8MX
S3c9cvNuJb38bXQzgZvNoNXsJGm0ook8JX0PpmL2syrf+k9GMLm37mvkzZBk/Q42nj2A1Hcb
Ca7uQ+sB5xCmOpB5921qx04iXtSGqidnEBzdC+31l/n16psoPfNAWj+4UjHvYbaGLYedrCJC
9Q8/KYXGpmMPgy0urT5aTKz6QBWZrXiSXSMvxl/1CaElNLRFp/dfgaoqxdFvn3wTwaOvYo84
n6Ib7iZmBoSfvMOGG0dRdsbxVI2dBQ1Zdhx+JG6pTYeP1kG8mIwB1g+f0jRsOLGex1A8fTY5
zcW/cgg73/6Yjo/cg3VSf5qvuYD0mr9SuWQW+vHnokcu4XuvsePia/GP24N2E+7B7LQXJEsL
9RtRiXz8Lr8Mvo6STCOZ9m3o+u5asCoL0FBqXpJrey5CkeVWP8r2UXcS79KFqgUzMbv2IP/5
p2y/7iaM7Q6tFt8FJ5xLLIIddw3De/w9EqPOpejqqcqhCTUusUCRzb4IujXc+yexZf5SKs47
FvvMPuD72Jk0m9e8QWLlehqLNDreMxaz7xDyG7+l8YRT8SvL6Lz+C3JisO+spf6ikZjlFVS+
vZSweo9Csbl+KzUXX4L3lx/RU1V0ePlxgv0OIwoKbKiogjIr5tI4aib0O5J2Y+7E36MrZmOG
ur79yP/YSGzSICovvB607WydMxvtgdVEx/egeunLNK1fTfrCWzFOP5S285coBj3MNLH9tFPJ
1dT+ewbWOOtp5UF1lQgvI2rfTbX1R81ptu5/JFHgEJo+pUP6UDZugaqxyLVz9AU0rPqCIj/A
i2vouklp2qB5/zJaPTwbq+PhStbwnzQwJxJdpbCcQnRY5FcvYcstsyltrse3ivDMZjSBGDGX
1HVDqLh+UqEG9PIito6cBMfuQ7tHX8SJGWi1m2k4/DRCK6D1P/6hiJyte3bHDj3K31uB0WV/
DNfCl+Lth6/y42U3YvlZEgOOpfW9ixX/HRghxuZf2TDyQszPdhGTxLa0jKAxRz6fpfW0W0hd
eCVN27fS2PM0PMtij68+gHgpvq5h7tzMrksvJ/vFF5hHHECyPEbuzX+Q7VFJ16VrcMtLqb/k
LPT3N5JaMJZEr0swbB+2/cwPfS6leMtW8uUpKkYMouSa0QWpUJgh1IrYNfBE+GgHxeMuJT70
NkLDRw9NpKIjuYofOJh6AvKNNE66jaZn1yiIp6WKcZ0mwrxJ1dUDKR4zFuwk+Hnqxw2j+dkP
KLl+IGWKfldVbFWj8jQBh4X6W+bu8dTc+zjJZJzIKsN3PcVayoAJcTLV40eRHDhYqu/gBmy5
/Ey0T35C694Fqgy89RsIghDT0Wj1xWr0qh5KpiU0XP3UYTQ/tp5Yr860eXCVCo7SBCzlJT+y
sH/8lJ/PGkZxfS35oipK7x1D7KwL0T9cy7bBwyEdYpWX4UYQ39VMpnMlezw+Gw44ElYtY8v1
o9CO34d2T7wEWhJqNrLptF5Yzd6/YWDzxtEw4xnV2awi2FsroP1eSrwrBlZ7Si/yTWlVjym+
4nRKxi9Ak1wMne2jL8Zf8QW6nyVvlBCV50g2x+DwdlQtXU0ejaICT/cfy8FE/+D6ol3TCGzR
7jkEH79DbvWz1K/7HN3RSfVsT8VpA/FO748bLyYV5Ml+tZ7cU3Oxu3endNBt+KaN07gVZ/IE
Asun1bQFChrXTRqKls5SdOM9uK3bkJKaDhGJUKNu9nWwq5myc69BO+xY/KARUy/F031i2xup
XXwX/lNvkPHTFB+8PxVDh8AJf8IIYng7vyc/ZxZ5XIrvmE/MTuD7aXSzCK12C80LHyA791nS
lFB2Tg9aXX07+X27EQtiND02iewPX1N26TAS+/dShe+8FhJ/fw11K1YS7txE8vzzsc+5RnHA
fpDHyDey9U/90Le5tH33eXLt9ijkVkgHurDCop/UMMMYeV0O2g80rXyFYOXT1G/PkNizLZUD
zsDuNxw3nsL2swRmkvxz99C8/h8Un3oCydMvUKoVrUXsLa28lsivPAf3zaU0fvgxMYmSGRfP
1ggSkNhvf4qPP5eoXVcCqcV54FgQ27CJzQ/dSnzxh/itKkiNH0JiRx35XzZj3nwz8dTehWK+
7rHtirNx3/2FioUTKT5xIPgid4qRM9IkKMIljf/aKna8+gL2tiztxt2Av/+pSndo/fUjdj17
P+7qbwlNncR5h1I55GqCLgdhSI7w9Vq2PbsYu1MnSq+ehBnqRNkGamfcgp77N6RSzS0G9lsE
KxjYPiJzgOY02/qchbOpjoTjUzSiD+Zt92JGIUbgk310Ctk3Pyf0MwRf7SSqryMqL8UzTKrH
DyNx0XX/cYioNIQCSTRhuiJMSQzEj0ZOQbEQiPjTwRKWUcoLoak6qVWCLRIcQ5PAh+bkFNST
giUORDETLXTAjIHjIGMXvMjDELhFggyQSmchIYoKDSu0lPM1A0/cPb3sAAAgAElEQVR1div5
gWvg2ja6G2CahlKYCdLXAh9dhg45PoalE0o5ROpF0kbkBEqgrDBC2IjpmUqepUoRIt0QyG2Y
SnalmyI61Ul4Ab6oToSrjfRCH56SHxR0SqKbDKaNpubBVZQOOpPS6bOJIl1IPuXthY5Jir5O
l4gm/XnyLCGal8G0ivGCLLZqybBxpCzlh4RKlKcTE0VDtgEjWUIkNyMi1KQULxpCEdKllBxM
CxzyfqDgtZooIWBa1jIw8YyClC5PPWYYJ6abeJGFRajqjE7kkdIs5bDjjiGVkULDsJ7De3Mt
NZePJX5AEWUvfvJPUbCU+0QJohZDRNyaj0uA7dm4VoStomdBEiffIzJgQWaBnBrpNJHCdUGH
jeU2Y2gGWSuJ5fi4MZOUjN0wYv9OBLud+hkFFlEgYvs3VxC1lxzMh6ZmtvY+mvx2D1uzSF59
MmU33qdUHY5mY7gepu3jOw7OisVk73gcL9+MZ4fYh3Sn7dKX/uMG5ocFBbYoykW5oQd2oUXG
DHA1A6swikepFNQlkhdhBUSVboWqo9oQTWGQolkTKZCADh3D9zGMBI7rYMZihGEGSxfOywIv
xDPq0fXKggg1ymBGKbJGSFLJ0wtyiQYTypCpJVLc0JAgIbVGVeqIPELNVF0H8nyhdDeI2Qey
qy3gx5RdEIY0qfIJT5OCfuyfZEShI11gEmiursgFExHlyqERPtkgb5hEm78if9L51MVMuqxY
hN7tQDTPwlciF59ABhMZhfalUPSRIh8KdQlGBScjsjn5oJJPmULBCxTOYORTuHZAqLuKK9Xy
MkxJU0arutWVcNrB9kV6JPFMPpsUnsVJCZIM8QQ5KcclLboRuiqyyrdl0cKkKhsYSn4WqqK1
RFtNk+cT52ex7U9Hk/g6JHnfJRjnj8B2hY1NKHma5psEwvpJqBKhsDgQ5N/Er4oMSnZfzoMH
lkEmjEhJcVx0YYZ0PAhy9pWIrHB05PUeOS1BAkEy/4YWMT1/HHUznkIjhh63WwxsL0TFJQa2
ve9phBuasYIQ47pTKLttvnrjKJ/BjP8m3dexI8iOPp/GFX9X2rXANqh+fxlGu33/sxAxyhKI
UFeBVlGPy4GOYcoCqxaEgqeUsyGeMdBEz5ZSdiaV+UhJ2htF/IQoYxItI0pcWyKRakRR8MnQ
pGSqRGmEcvhE7R34mIaUAgrfa0bNECbIGiZJJyKIiVkpaaxIgkEJU+X0SRQSOCZR1cOOCsp6
PXDwjRi2FxFYbqGtIgxUtAs06UmAuHwgJQiW7U0qdbeCQnIPLYamvsvCCFzyhk08hNqVM0hf
/yjxAcdQfc9jUnkiiuJ4hoflyfQvm5zhk1AibllFh0gTQ24RP4s2U907S6AlVfTwNKlsihGL
AjWvkIPYhjylKufov7X++Eqa78ULx1QPLFzDxwgLQmd1mEyPUJqqZL8in4yhk5RYH1gFfaBA
PDEM4TojR5WMRFHpf/lXNp97GUUHtyO+fAVFlBa6VkxXtT9JdC9omx11vlVjiNJIyvPnsIOE
ilJKGKzaIIQjtsS2Co5K2HMZRSh6TUNXAmYJvw4xYn6gium/q0VsnnMbjfc8qzCrysHeeB46
dFO4PmxqprZ3L/I7xMOHFF/Zn7KxIpQVZbMscEHIKjIbUV43PDMB5/blRH4e30jRdsU8jIOP
I63nKQri1E8eSv2iN0h5cegRo3rlh6oO9n+fyRHSavF0Yif8634wV0llC80TYeih60lwPDRL
1O1pBOiLzMXxLIpMSbpNxXQV+qMkBZc9LhQYRdKlaidID1ChRiM7Jh2rkrcXWpFE8SCbIjDC
x9cNLHmZKbGgMGZSgofcX0xdaGp1EH2BQhq6pmOoAqi0fRjoQiJoEY6mExdZtzh5aaGQXRYn
oEsvncQovVAILWBHiTvqSeXzyGMX9AAhjq4p7ywtMqrlRr5cs0lNEAvatlKHIykHRXqfRBEv
VLooaw2dvPRfhT6BHsMWJ2kaGEEzkVFciMGq30oijlhFXnUQmIFFKLDV14mZEqvFwGUBUmiG
YFWJ2C2G55r4ttyz0CLiRwLQWgxRlP+4ylWGvkXehKQ8lyVi6IIDUy0pYlwCEiKHXH2ehFdD
probqbzzP+1JLR0JYtCKBgkK8gilzlK9eLKPhS6D3Z1J8/sGNu92GmcuLSiT/y8GVtP7RJzt
abUoJcPOpfy2GWrRVI9XZKHJZiofbVH3+B1kJ76oMLZDhqoXZlB0QF9l/YJt0+MHk3/6L2hu
gL9/OW1XrEFPlO6WgamuJJVEteRVmTReqkiNkVPkouQCga8gjR7F0cIYniFwzEJzXULTbsl3
CvlIwUjkMMkoOjGKjOLBNIlaLVOCAtdXRXnxpMJxG8JHa16LVxcLaRFDqwNiKXSjpuRJ3tTy
z2ompMykFLhjFJTZApIEhIjS29EiFck0Q7UIFkCKJs2HogAvdB9K7cYKA3JNW7G2NWK2r8Iv
aa/ywEJiCY5Q/4GDHsVavr/gsl0F05oJwhJl7HYo0MnDN43C/V0fPx6pIn3B0CV3lOfRiTxZ
N7OFivdU005CGmcjFzdQIBZNF+cjTy2dCqjz49oW+qbP8LbuInH4iSoeIwjENAilXifNj+Kd
JMQoT1VwFGrkhfolHk61AajyglKqCMoQ5YgSKMseuoR6gO6YCkGIar+lwYEoVO61YF7SqhP5
GAKnd+P6NwxsHA0zn/2fOtj/RnJETc3sOuNP5GtEGZ0nNfxsisbep7y5pZJHaWyTD1dIOhsW
3kH9tGexBVe7Du1WPEJ4+DEqXItLr5syGO+Jz9VgUmf/SjqvWg2Jit0ysCgswBgrCsj//Anp
Cbcp2Za7Yxe23pogaiJ1wEEU9TmVoFdfrDClKP3A0zBEDoavyJEgkjFy8pxy6FX7gOr/VbFM
+qHE46qYIwe8sKGi4VfQUPnJQme1GkMn/t2HhFEwWCV2LlAv6lcQeVjSP6bykULXcOSHWHqh
81icg/R+Sbuo0B1qcpcKbhIRIvKhiaVypcIhbBg/jPrn3qLktuspHnSDStp1LaaMUjHmkhFp
EmEjLDVZWR4wT3bdaprvewDr1KNJXnMnup1qGfkg7yOfNMCR+0SukoiZoXxSlTGqyC2NtpYv
iaUMk3UJtViBzZWoGMkICaOlgbUQXaOG7TT0vYBocy32lIFUXDxB5WrS6CqcTIvAXkVkkU9J
a44K2C0tiArFtRiDrJEYoxoBEzrYeqgcvkytls+rSxeFVdgXz3ExYjEVBkw1JlD8ooepBOz/
YQNLz5tA/cynCl2h8d9o+gKLqAzs1FNxd+YgypC6og+ld8xvSWCVu1AbHIgcKUqRmTee+lnL
FRPkkqXN8/MwxFNFMsVKZ+fdg3Ee/USFbKNHK6pfeAHi5btlYC0gTrW35779lMbThhL4GaJW
xdgNTYR6CY5RR96soMvM64mddUUB/snaui6uEDKR5DohukrEZXssFW1UutQStxSsE/pXiA6Z
lJwXgqdgiL7vYFox9b2O75M0C60YjrAaepyYNF1Ki4qaZhyiS9ewkcM3JK+QhkvBeIWTVBja
qivSQu6dNT2SgfQ/hQS2RF6JXoVmfvHivkSdW29g11PvUjHtMor/PEYxmJKziCRIXIIYpowS
UPxLKD1sBnYUUv/Y3WQnP4h+Wk9aP7K6cHQ9+dw+jmZiO+DGpOdMmkYtIk8nbYeYOYeElVLR
t9nQKZZwLDBMchLfx5PcctUs/K+/xho2jmSb9kpRYeVq2XDU0ZRsz5Oc/GcSV0wuMKiNDaTv
vhltn67EBo1H+g8KDs3FEkJFgppVKA3J/sjIdZnEENNdZZ15vZHs5AloMZOy22arVDeSxlBR
H6ncWRJxhdlbtFkFHF+gL3Zv6NPvRrCCgT2jahfCIoqSQ3IwhaXTOTYfehRRTmhgl+ILe9Nq
/INECUtBKPFiSkUjBcu8QXrBJJruX6SYUac8RuXCeyk64lSlI5MDUX/tufhrvlX5XGL/tpQ/
/wrEdy8HIxJvG1NNnd5363BOvRatRwmphU+jC3XcvIVdSxdj37OczIFltF35GlFRK8VwBVoT
RpRsSc4lmdXxvQjdKgzvQWb3m8JQuqpwKQSG2FloFLp6BdT/E838tv8Ss1Srq8zhkGQ9xJVE
WZfkXxySzCgpwFqBiJEQGIVsDFfYPGVXcoQKBIKcFhl7LsZneJJbyvErRDlXiAFdIzvlWtLz
Xqdo+uWkBt2ini30DDRJDmW0gCV5nLzvbwYmLsQmv3wu9TfPx7zgAFpPewo3ClSXt7CkriVH
TxxDTPV0CdyTnysgzyafW3FDSv6ikdYzxClVbSGYFfhhwLYh/bDf+pHq91fjdemqDEVN+ajd
TH7rVlLdDyQTi5OQSFS/k41H9CJ1WDuKl4qhSw7YQjoqNFyImpEboAt5Iu0raoPEBE1iQZ4t
nQ8kTGh0/Pt3Le0taopgYTK8oMgWFBColEIGP0gfYgGy78717xnYjCX/VHKIgUWK5AjR8nnq
7h2DESg5KbEDu1PS7yoFBX7z8IU5FNLvFeGsW4Xz3qtEXoQRq6Rk0FBovReRJeRmlvpTTiX8
eSeatOof25X2i6Uy/v+ai/jvkRx5Qdkt1K4Mtmk47UaifaH8jU+FZ1K43fSybDj4CLTmJjq9
vQq96yG4UlRNN+K88YIqBJd06op96LFKa6nlwE4UEnatvoZda18WEhrt8OPR9+ihqH+JaL5e
GKLifvIe4S//wE+kKD7sJGjXBUc8rNDelrBjBv4Pf6P5s7exLAutW09S+/dUpQUhMJzGTXg/
b8E89HA1JCD3zgfY3ToRtu2q8jIZMON9/QX5bz8hVlGCddDx0HbPgiAb2D5uAMGyv1N030hi
3XpiffEpUVUHOP4kNXei4IIEqrawmoLBPPCWP8TW2x+i5KIDqRi7CKdIx/jyUyhN4nfpSPTx
OvKbN2N17ULq0CMJtGKEvAySkhLU0vzWWlI768js0Y2iw3sVusMbagm+Xkft3ffifPkrVQ/d
hbnfAeiduhVma/gR5ByikjiaG0L9d9QtW0ztvYtp06cnxSPG4rTbG7OoDGPL92R3bMXu2BGz
ck81pkFv2kp+w0/ES8qJOh+Atn0zdS8vInffAqw9ulA+4x60VkmMqm6qB1Hoef9v63B+/ELR
+qn9joOu+ym5n/yQkRbW6P+3jf2ugf1/Cs0JnbZrVxB03LcwSsF1CWxp7Y7wBAaJx7CLCqhV
JfeBik7i4eQnp8hlKJch1UsXNyWYXDxJiPPqEupumFLIuqUjdmRfWt94t3qf3WER1aSkIKY8
VP7HddT2HU5RtyIqVr1fqNmQw//le3b2HoiVtah6/yWau1ZTvOZFaiZMx9vVrNg2GZ4TDuxN
p9vG4pd1kjoEzvoPqLtuJFFtDisb4LRpRftR12NdejEZafHzszTccQ27ln9IkQM53cfu0JbS
kYNIDLgYIxACAfLzplLz4JPYWUPVENN2nophF1ExaooiENyn57Jj6n3E/3Q0etoh++6nlI66
ltjQ69Hyjey443b8VS9juElCLyS2VxmlV1+OftFwVRTNTBxW6FLYuxxf4PyWXQirbfQ5jOq7
HyBb3J6UeHPFskqeUtAKNi29n8wtT2Cctw/Vs4ToSrPzhOPQ612sHvvS/Mk3au5Go2HQ47pr
CEdeSwab0prv2Xzz7dgffkVatHl+nrLLjqf4tvtpen0Z7uj52E3NZKuSxLNpmquL2eudLxUc
33VpX9wPN9Lu2elYR/RmR5/eZL+vIWY6uNkIO0hSPXMwDBxF3eyb8B56idiYQRQPHY8uvQnP
PMbGSfdR2utIUnMW0XD1heRe+4AkHchGOZrjDh0vPIWiCfPxBZHMuIltj75KSSZQ5QG3KEn1
TVeQGDoUFyng7971uwaWnjuuABGFBk3otFm7grDjvoXcoKVuE4UOnm5hC/CVQqhi22S2TwHq
FMg0R9G7hYEuPpomBIi8LqZqMTvPOZHcF5uwrQocN0PnlTMJD+1b+Gks/9fR2f9eBCsAiEgp
EIIfPmPD6QMpr9JI3nQdfn4XoWuQXfoazqZGEmccTvWDj5HZ/C31x12snr/kzsthry64i1fQ
+Ppaqq8YSvz2u9CcPJsPPYnAydB52UOEToZN0uYRb03Hjz7Abx2n9o4bcJ9cQ+qkIzCH90X7
cRPu6EdoqChnjxUPQfdDaH51CQ0jZqi8sPqhCZimSTRhAZu31dHh8Tuxjh1A3aq5eKPuJgoE
Lkck9qtAu/5yys+4ktrr/kyw5hOisiSxK85Ea3ZpmrUco6qK1vNGoZ0ykPSEa6hb+DZWSYzS
M48g6taZ7Ixl+G5A8cQhlF58E4FMsaKJWFRSiCKGRuaFB6kb+QCxQYfSetJSvMBje5+TCP6+
CyMZo2j46Zg7czQ/9ZJoKKh8/WmsfbpTP/5OGp55jsrRVxA/9hRyE8aQ+zhP6zV34ZZ3wZk0
mqZvN6DXaMSPaI/fc2+qR89SSo8dg3pjvL+F1LK7sQ47i/z8sTS89RHWl3XoHW3ouhdFQy/E
PvpPNN81hroFa+k84RKMy24nK9OBVjzH1lHTaX3KfsQXLiXz2GR4+32a1m/FLAlJHrg/pb37
oJ13GU1PTKVu2qMUHXgg8evOhWyWzI0LcHSL1o/eRfx4EXbv3mRr7dd9D4gsT0qHDqVDTqf8
lrkFmlbZSURmzi1kZ65R+YgfK6XTh2ugsj1+kMY3i1rmGv2/rVyRP0GhEFeYwaem0BT6x/xQ
TQGrHdkff+UPRAkbLediHLs3bRatxJeEOTLxI8HWIQ2PTyaatJw6qXX4Pp0WTkI/7cJ/7WJU
5b6g1+Bv69je/xoSjSG5chPPqSMu7QqBR9mZh1I+9X7CsnY0TrmGzMPvUzzzYkoG3CjyCuUU
th5yFHp9mrYb/0HeyeLscSROK6j+8GP8VIr81k+xG/PYexxNtP1bNh9/AVrnBO3eew/dSxFY
Grn5U9l1zxMUXduHqhtmk1v/BunPXqTVKYNw9jkMQ8vizZ5I7QMrKRl7KSVXjSWz8mEarpmN
u0cRXebeQ3DQUUpUan7yGpsHXk/UuYyOzywnal+ucoqGOVPxP1xP6cibMI85jeap19G44C3K
b+hH6Y334pkZ8k8sJj3xHpJ/6kFi/mpsIUP1ZgIzjhlKbcrHWzabmjGPYl9xBK3GP6wKxDvO
PJ3s37fTdvnDxI44EvwkW4adSvjGJkrn3Uxx3yvYdtEJsK6GyoWTiZ16ripLZL7/GLNoT2Lt
y/B9g7rLL8B/6zvarV9N1KaTKo+o9pIrz6Tx1U10XD4J46j+igzy319N7SVjSA46jqKpjynm
1Qo8mu8dQ/P9r5OYOpjyy25Eap7uyufYNWYKrXsfhjH3OYWmjM1/Z/Nx/Yj37ETJsjdUxhav
38aWQ07BNyM6/3UtpDrg6Wn8F5exfeRMKvofSPLepbvJIcpMj333iyRHcd085VeeQfy2BwlD
CcU+kWXQPP82mqauLEyHqmhDpxcWEXXcs5Bkt/R9/V4QlcJjIH1Focy8E9YmgLot8P131N47
g+DjLegJAz/j4pfk6LJ4Gf5hR6gPF/g+gWkr0iE9ZTjphz4gsmWJNCqemUHsyD7/8u2lru46
IbFYDL7/lJ9OvZh4pwraXHUx9Z+tp+H5z6k4b29K73lJ+HU1EHPX5WeQe2cDieo4bm1h3kjO
TpPKxnBNn+qlD2MfdizbRg8iWPEXIplG3D5G8eUXYfcbBWU2xgtPsnHkdJKJOJniAH1nmlAr
w/ZyaGaEcVxHyhauxrKSeM21ND8yldwbb8F3YGWyBCVxknf+meRFt+Asux9n9HyiQcdRMeUB
UQYqCr7xqVlsn/gQHS8/Hfv2+1XDgGaY5HUpF/tKChQZMRrvGEzDMx/SatJgUhferorTudVP
0XjTZLR+h1EyeylJReoUCg8CK4UlyTw/h6ZRc0j1P5KyexYpLWLNUUcRNbq0/3gVWukeKr/O
TrqVhsUrKZl+C2XnXk7++QXUjH2YWGNAulqj+NzjaTPoStw9DytoJj2NLQNOwPp6OyVrnsXY
+0BEWehKdXT4eWTe/IXSpyZR1PM8NS+y8Z3FZIZMJnHBYbSa/jgy0N0MAuruH8euBS/SduzF
JIaMx3Ud4q8sY/sNk4md35PyWY+r5wu//5qtZ1yEfXAVbVd8jOYF5L96nx3nj1D1ulTcwa0X
csrESmloDVnCLlVUf/Dubv/4Lu2XHt0iGVXtOjnKh/cjeetsJeM3pchqa2Tn3qW0iIYIRwOH
sgGnoJcUEfkOlmjS/o+RAf/nadeEYRLtvSYFUpk1aOI7Pk0/bCL31U8kXRs/ppHIpnHCGBW3
XYYxfBR2EFPsY8GXyqa7bOt3JvFvasj4ojHX2OutpbD3of/SwHJ4SlGi6OvvPmTnaYNxDmxP
25fWEjY1sKv7sUSVSarWLMFsf4CqQ9VccDzN65uoPGdfNffR9GO4KYt4uyrM4grC408i3rmn
Ujs0PbcA55mlOF/UYGc99FP2peLxZ/H/sY4t/UeQ6lKK2etY4ju2kRcavU0biBUR2/MQYmf2
J/PRShovmkhMFv3IahI9D6epoZ7wibWUThlB6vJRpJ9/kIabZlN0zdmU3HKvyss03WXHM/fh
T1hI8vI/UXTrrIIEKYzhRiFxUxQghaJsduIQ6p9cR/HUwRQNHKsM3Hl1EbXXTCLZryep2c8o
pYdMUDZE2FeQVpBePofmMbOJX3gy5VMfxrcidh59HGxvotVHK6FybwwjYufkwaQXrafdXSOI
n3eNSqNj33xI7SMP4T//Pb6xgVysLXs9OAVOP5N0pNN88cl4636k09qX8ffYH82UObkeOwb1
gfc3UrZkFskj+6o5i9m1j5O9Yhb2hSdSdvf8lu55qJ95A/m5r1BxzyBi/cepCOisfZb6q27D
6nMQ5Q8uK8zV+eoL6voMIjyiHa2Wv6EcEd+8y4a+g7CqY6TO601QX0c8q+O3S6JXtCPRqRVW
nysLowl349J+6rFPVOJaOI5DcsRZlF0/E80WjrNQYG2+fxwNc5aRipfgCnyzfAJH6bLRREsn
3W7/6vI9Iktm0EnaLFS2tJcXJjnaUkFMFRFm0zTZGdqNGURy2DhVBFWaMC1UY8JiUq1f/wY1
F41UvKoqVO9ZQvkbbyjl+r+6pPtBJGyiM8v8/WPS5w4lah+j1Rt/UZKahilXk53/Nvm+ndjj
kZeJvIDGSVfhLfmOcPpASi+4UVSYIsRg18I7VAG49Mrx0NhI06sPUnLI6XjdD1V6toYLT8N5
axcVXz6DVbEnNXsfj9ajivZrXgAtRQYX+/uvyK1dRuLEgWj7H86O8ZcRPbOO8gk3w6VD1BCY
pjmT2DXnOdqOH4o9cATuCw+x85b7qLzsDIrHziUUUaoUvL/6mM1nDsY8rD1t5s7D6XKg6qHy
npzOtjdeodVlw7BOuYiGqVeQeewTKqdcSdElNynrybzwKJuvn0mb8w8hMetZ5dUtU/jqQo4s
6KVx+WyaRs/BuvR42tw5T41u23nyiYQ/1dL2/dVonbqpInnj+CtpXvwFreZfS7z3ULIvzCNj
mJT1u1SV75rn303T1CWY1/WmWhyEb7L97GPQvspQ/u4SrC77kdMtRck3XH0Oja9+Sftn5qAd
3RvD08i+vojtV02k+KLeVE27D8dKqJ+dsHPacPy5b5G8oS/Fo+/F1dK4cx+g/sFniffen+r7
ZP6jR+6b96k/+RKsXkcQf/oJbL0Eq76OmuN7qfEUndZ9jFuaUlOKk7U7ySydj7HfCUQnHkdi
N2kO7dc9946SxFWNwxh+Oq1G36f6uUSMILWXxrl30DjrWeKOST5uYfpNKmyqAShqnsW//gFi
8lNUpH1B84VqkJmJplILyPgvT4aZSIzau4iq6y4n3ms4XsrAzjtqkq0M7FTlJD/HztHDsVa+
S6akEq+untZDTkK76zFETvyvDVzKRR56aMG3H7HpjItJdE5S9cE35LSARM0WfjqlF2UNcUof
n4zR+xyinz7nl9MHUeqGRCPPILbXPoTrP8F54k04qBtlL71CtPkXtp90GlnToOOciRht9qTh
uuF4NQEd33gar+1+uPeMpPbRF3H37ULVRecrWj5z+xLy5g7aLLgH46TzyDxwE833vkLy4mOI
DTyH8NP32DnjZZJmHPuWARQNG4/39IPUjr2HoiGnkpr4mFIYajJCWofG0VfgPL4W6+Du+Gft
RzJrkJ27Qs1AaTP/Lswz+rNj/OVkHn+P6inDSA4eoyRA+eWP0nDzA8R7daHi0VdUkTandJSi
XYzQzYjcs7NovPUhOPsQqu9fIhPhqTmoB2Z9nrafvYNX1RY7stk+7izCRRspefQaUqcNYYPM
ePy5kfiEAZQecRrbFz2Bs+o9EpOuoPUFY5X4YOPV52Gt/RvOcZ2pOKQnxTdNU8qYzCW9yb+7
jXZPPoB7yumFGfifv83Oi4cQZTIkB/QnedYp2CdcSOPbT9EwdJKaDF1x/ZVo/6u9cw+ysqzj
+Oe9nvfsOXv2wpFldwMRlIuQFwzUqfCCNqNOFkghVJZKWhma1pRZlCF5wZwYEaxEB2l0xkkq
U6k0zUtkeEPQxFRQNC67wt7O7jnnvT7N73mX+kuZ4QwzznTev/fsOfvb877P8/x+n+/3O/QW
wd0bqHRDywXTyC+/nSgpYO75J12nnUuyt0zhwtlYp83AO2ceQ6tvIV6yllKbR8tln8NobKS0
YjX+m30UFy+isFCG8rWFnxi7Jh2tAj81X/fmnkRx2Z16dhKGIY6VYeDmb1Na8zBWb0yQczXR
7ZgOZiS7aZ/kAOkregioJecyfJTtXqDb3vaoFoxxbWQ+OZ2W8y5EFUfpaYzIH7R5tJGudHIm
CDc9yDvzvkNG2sixR8YKKSxfinfWvAOHtMc+od5qmvDSc+z4/GWYHQVGP/w4ZDN6gD9w0zX0
rrofZ1qRzl//iSTfgPnoPXT9dBVqRz9UIvoafUadMoWmn8J8uBAAAAgfSURBVNyB6hytjf/D
dbfRt+hujHyZSkU6LwntP16A+6XFBGaiV+i+6xYQrt6AyjXTl/TgqVaaF19E41cWYiQ5Ku++
Tvl7VzD43A6NiDm5Rto/MYadf91C65Xz8RYtpbRmJcGNt+GcP4vM4mVkLGHmhdqXR4tPzzWL
qNy3HtNoIQp8zBE2I6/+Jvb8i8VTmX3fv5zq756i6coF5BdehW+5JOvW0n/VDSRzZtBxw2rt
Ely1AmHKNc0hY4iB++9i4LsrsM+fSetNt2uj375TPo7ZM0Drg+uIJ0zADUx2LLkA7n2e4o1f
Jzd3Ebz8JPuWXk//0+/geCG+E1I8+xyaly0Bp0jZVGSffYxdVy3G2dFFqdjE+L9vRLy8uy+Y
zcALexi38keYp56OT45MMEDl+hvpuuse4qxDx7cWkL1ElOcVKtdezZ61D+HI4LwxwJs4kYGt
28mfMYXDbv1tqiCPAnpvWUr/r9Zpp97CxXMoXHOTBqLLy6+gcvMjxA0yQK+SVGwKS84jc+m1
uEJ5fPD6caDHO0b3Zz+lBja9pTuG3pRO2u7+DRQLxJF4FnhU/Z3Er7+NIyI+x9ViQDHklyty
ZGX44PcQnKgqLcPQwtVRLCLaM6C1k+gjY8SlXQM7TmDrBBcjqeqzmoCeSgiD6iCvzD+Tzher
VJoz0L0XjhxJxx+fIsoLOXYAVky2PEbMkHBvSYD70iaUG1KdOp2GQADTrJ7FVbc+iddTgpPO
0WN9WTzDci/RMw+T9A7SMGos6sSz9RY5ZbxDKkKW79qO8cyftcCp4bgzGZw0lbwArP4gKtOs
MR7/tc36S2e4GawZs3A7xqdIjzCB8gBRMcH6n+NUmjFPPgGnfRrB8xtR7QUynUdT7d+OeuNf
ZEaPRbVP/q/5TUpeSFc2JNyykeobL5DNZjGnnkFw+HicOMayDKI3N5OUeomP7MDNj0sB1p73
iLa9jDWihWDcCWSEbLMkfcUiEdDVjFH7urDf3o4qNmEefmx6Ntu6kTgYRH30JCyEiA+J3nkV
u3sflclTMNw27YibK/cR/uMvRHt2kh03CXXcyVS8Ag1DZe2YJTumTN9eBl95gXzTYQTHnIgf
RzS+/TJR1xDqhAnEmRa8SHAwi4awQvjaFhgs4RwxmrBtot5+ikg2fOYRcnv+TXj4aJg2E/vF
1zBaA4Ix03VzTNM0Qgds3YLf3YU6aixex2Ti0CG2fcy3drPv2YfIZS28Y07F7hxP5LoYSRlL
1Bc1XEbfkktVac0T2o5Z/lGFO+8ld9qxxIY8JQV5St17hd1KeRLxMk9xHTGG3K+Jet/PMOzb
LquioClaTqAVrBJBZOqtjugMytiaKZCtp4ZWE/EYN+j+xkLU79fjF0bgBOIXHlJcegnm/EU0
yOHqAE8YabDIk8m2BH2RrU91WKNkYpiWRopE7azBVeHiQ5eqsz9kIcIOLSqOoXfiQpdHiYgb
rTSxc1iwFGpZi8hMRAKTes9XrQQvEFpexJKiCc5r/ZQSO3H5ObkppHqiH1M+ifW/eYu02l1p
ZypJXkkZHvlZN9XQpKkj8vxNJHxAlMOuFgsK+ylInvDVYgPgGN5wAomAuOlAX9PuQuH4Jv0Z
aNSSGjtNBZGn/fDWU8SDeoapg1YE1YqxJIXFlhFLyn0JFimVkxvdle+PoF2OlyoVRK+leT6p
sZnKZQKfwPXF8oiCpLe4Ea4SYaOnuT/x05dhfFbZ2oPfkGw48a0U/30xTqKKpTwtfZLfr5UD
UiNpnOm9TirB1p7yalizJrusRPR00ncWDZ0oxEXIKsYOsmMSW7p+TKMJKwzwbUd3YEVrlkhX
OYXiDvoyghc3qJ3nfhnPc4krFcwJHbQ/sB7yBa02lfapQP1CRotWZv+lJSh6pFXbGiqFFYZZ
sCU5p4mpvhIN1M4u3vvZQobWbyZrNON7Cqd3L87xM2j6w316sCmtWp2fVb/qFfiQVsBQQUnt
vuyLROs3EbaMxNnXi3nWURSXrSLTfMQwPp1+iYX01uutaH/kxtJUaW13uJ4+66A3EXcMB/M9
uJbd9/wC5287aLDaSLKKgaAHM9NI+7pVeJNnajm2GJoMY+Yf0vLWP9b/ewWMWCVKbd7I7rlf
xSy9hzuqneTdfpKPddJ08RewT5+H1ZInkQgcla5a+gysZe61X0Ivi2BCbXuV6vMP0PfYk5iP
bkP5BqqphYr0Gf2SXvrbVi7FPeszhLGNZQskKzqm2vQ6tf8F9d9Qr8D7V8AYVCXVEOWJ1q1g
2w9upTWwNUbk9pd1RKdxZCvOyGasXA5bAF7hMHSuUiqplqjZWi6RQsXlvQxsLpOTCEKjJGo6
nJZG4mCIatKn43zGLL+O6NOzycaeVm/KuUCchuq3Vy3Vr7/2UFfAiEIlkiMSY5DyvXcwcPUv
9YE4MMWDYwj6EozGBh0KJ57yIoaUs7buYIlyeThR5WA/qOO6+EEZx3eIGyWMzyATeUQyb1MW
memTyP/wa2SOm0kYZ8WCIU04lFOYlhsc7DvXX1evwKGvgCE7RG2NbCYk1Qi16WneXXk9+Sd2
EboNKFdswfafkwQksrQITYftGYael9Vy6c5NLocnec9RgBkoPTeJji4yds5soosuJ5PkNGq1
3xxDsn39OEkl/PUlrJby1197iCtgqLBfKbtAVSyebekYGuJMjPH4Gvof30Dy9CuoniFtciJm
m6GEVIeiqNV+Srgy6Krhkm1nWRvLRFhT28kdP4HsybOwp5+ttTmyQImEX4SGAv4KnCkOT9LR
HO4W1/Du9ZfWK3BoK/Afv/q0Dz6vlvUAAAAASUVORK5CYII=

--------------iredMF1JD00NyPlSdp0LH0ML--

--------------dCKupgDOcwszYmHjTjn8ej3n--

--===============6498278571920903416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6498278571920903416==--
