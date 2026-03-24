Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FyLH9frwmkdnQQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2026 20:53:59 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CD531BEA0
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2026 20:53:58 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1EBBA3866DE
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2026 15:53:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1774382037; bh=JC73afJ0+cuw4QozqC/v0XCJ01dg3kLnaEKuWepZsXk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=xVnvaQwRP44/3HI3DKhRD/7mkAv8KpV2TOP5YUGbt7wBe5nxsLp6ndJkqZ4CyKyyl
	 8O5wnkIqRaisNMFMrmwoubBOqQtNBoy6MhxY+/kwuVmIY8PcWZI84NDRbza2DuQtCT
	 ERi4wato4L+Cqj0ukE03rbtIV4ct2q9JsF4Z3i68P/oUoNFG7QYh6zPiDf5fHVLt0M
	 IxbkXGg678aN0TXrGWi28uA19CxiIvv9p9JRwFCsUe/Tuc3pB0T6OZP3HQJR4/OnSV
	 YoP1Jkc9xJkpIOpj/Betbwsw3HsfwF6jEJ+9CrI9sdBWLf3qeYx4BKGf7eITOXJTnB
	 d4z3K0us+pRGQ==
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by mm2.emwd.com (Postfix) with ESMTPS id B37F03860F0
	for <usrp-users@lists.ettus.com>; Tue, 24 Mar 2026 15:53:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="YNtdmjhz";
	dkim-atps=neutral
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-794719afcd4so51488707b3.1
        for <usrp-users@lists.ettus.com>; Tue, 24 Mar 2026 12:53:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774382020; cv=none;
        d=google.com; s=arc-20240605;
        b=aaYG2tMG8vrfx9coqoweL1mCq08y0THwynXiSL26N/4p+DEr17EBAxvsjfqH2rSyZ8
         CvRRFcpgzvD0uI+zZ++U6IegVOcKG6abEGzvMTj/u0b8O6YdIxos6N2+fN4hgkEiZbYl
         rXnNdFRidb3mxYHZ1E+JJaOf4GayFQuw0WgPyVjp2Jx/loqbJ8TxSBOMAqUxwP+KO/jD
         t/A+7c/in4aO7JmyMiLUnXwUCkiWXqRKjD8q+ojcl4XhNURBdk2X1EUYgt5N0RrkuoTx
         poqMGw8uzpCW0Pnm8fwfQPmqX+oUWl2k4lJLkM2XRAexE3hiauDYAiwTJmFso2hnrIop
         s/pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nKCHGV0ac7WseosMWopgjzhv+IDiEIpMNcSL/XBEMAw=;
        fh=H8HwgJph1caNltFILmOxHNp/dA7xFDJSwI9mck8jZPQ=;
        b=DqEjygc88O6VAd3S1Ep/MEcl8BKUKnXJyL4T+lr7G4VYQXbkgJeWrwwsqNX7Cc3SF7
         ymR9jGayZToj0uZrG7a00XetrF/soGXA/fKqERixhYvNyJ52x8cR9zc4T+HxAWR17n5M
         XvLQr1Yujt3NtF8+JdU1CPcVl3rK6Nz8Rd+PE+vcLJy96VacRKl7zyrbcZ9aOXYHfMeY
         gn6U55wKEBxAA0y5qoc5wT/zgKc1bvzpiaku02kPg0LlesZ+o3Y+4/Jer+YRfMSRqtzc
         NzxMrG+5uFbxDP57QG8tz9Cd1/6bpbvwOMWmkPsAjHpv9qmlqfPEOXiZ7mOGzMST+fiE
         Cpsg==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1774382020; x=1774986820; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nKCHGV0ac7WseosMWopgjzhv+IDiEIpMNcSL/XBEMAw=;
        b=YNtdmjhzLxRl0gg4bRAO5YJqntsMW9sjMmUn6JHV/Af3riEObHP37xw0JAzHGNMd5A
         dTjOWYd2GhhN7rfAkk4rGry7rU3oWP505EN86RIubbLDSmC4kVXO7zrKCl1MRK8ZrB9f
         t0umMx9n9Zw+u3u17nQOAzO2L6WtoAWwAyHPfFinX8ywCVb0RQqEBZdDg0pdtO1ALyRA
         HplTyiSqhaUeGUbU79THimdjjgS/zIC9Qm6dmhWYAKhkkwtrRbOaCI5Fr8HrnujiAsMX
         C6p9G9lww9u17siGaDfGVGTi4aAAuNGma/H4LEPDxIIDH3Rt8r8bTHuiWRQwVvv7GRdW
         iGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774382020; x=1774986820;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nKCHGV0ac7WseosMWopgjzhv+IDiEIpMNcSL/XBEMAw=;
        b=fkNcLYeYXyegoeCtDkJAp7RFwbZDS2tHknMcPOevTG4Wx2Nq0FLtZkRDONHYHbnjje
         SgVG5oVIsBtSfohdG5FkIdV1pGxJtJ1khMMDjWMFMej8b1Mwg5cmlOt+Nci3KLy2gSAZ
         X+Lo+5xZuWilfgM6lv5FBSBpghoAF9rYUBvxhCbbH4b/yT9auxGjpLZPbx4onDxa/7Ed
         +MJymxf445F1DQCpXBh7QK4Ty/ef8uVkqvdCN7fpTTpjKAqHhwYYNGrjJo2i1xS7omCK
         b+cNlgTvw5g5HJ3ZbbQ/ngPRTlu0e/TOZ8YTbTHd5HqzLVGLT1+0uTYiywEZW5fUOvIz
         22bg==
X-Gm-Message-State: AOJu0Yz1yx/OtSPWbUXpP6qFMw9MZuFo3rifDsG8EkuJQVu5wNanSFIS
	tapdzCU1E7LO5P+oLvpxZnzhp2miR3se1ncVqiEg6k0Gt8vSqIH2OHApgwc5vPvqMLjvFZ5Y649
	sBumtSf0gkBKQFVH0hToGCfn6Kq/7zQBhJ/WlxpvAZsHLN04G4HRYo6Srow==
X-Gm-Gg: ATEYQzyyEWTak8CvWW2A4VMINIh5Rqmepzcf1OF6O+GssEn7RGXd0tH3W1AhV8CABrI
	kuJMw6lkxsTkfHAT9ODalFK2oASVj9W1gXjO4k6y+r4XJgCD4Q+6OFLyXC0BRZrChrkO0uF8auE
	LHJH4PiQGeRp+AmG47H3pGdPuTAe9AcbvrfIpR1hKczR7UQU91pQQLYe7cSUChROp9ErfqLWNFo
	F1/9JQiUkOER9Gp1ECaZt6E8AF9T9I6uLaUUHGzcEOJHJyDOnzOt87PI/FcUzkUhi1AAAp3EqOP
	O8c=
X-Received: by 2002:a05:690c:7:b0:798:704e:9d7e with SMTP id
 00721157ae682-79acf6c80d2mr10125467b3.52.1774382020050; Tue, 24 Mar 2026
 12:53:40 -0700 (PDT)
MIME-Version: 1.0
References: <SJ0PR09MB912699CCC9BC55341AD91928EC7DA@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <SJ0PR09MB912636EC994B2FF3946E78F1EC7DA@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: <SJ0PR09MB912636EC994B2FF3946E78F1EC7DA@SJ0PR09MB9126.namprd09.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 24 Mar 2026 14:53:24 -0500
X-Gm-Features: AaiRm52PMVyaFjj3d7b8OwZAfgkb78-N-iDdgGpC04vNpUnt1c4MTlo8mAN4kmU
Message-ID: <CAFche=hHeG9-4WXX+OZzkYUPL5cG4aqgWH+nT0dax+B-8+mp_Q@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: BC2FR6SL2FPZCRAV6D6UKXBINIGHTCTN
X-Message-ID-Hash: BC2FR6SL2FPZCRAV6D6UKXBINIGHTCTN
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: IP locked for X440 RFNoC build
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BC2FR6SL2FPZCRAV6D6UKXBINIGHTCTN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7888547502969835566=="
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[wade.fife@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,aero.org:email,emwd.com:dkim,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: 91CD531BEA0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============7888547502969835566==
Content-Type: multipart/alternative; boundary="000000000000005174064dca827a"

--000000000000005174064dca827a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Usually this happens when people mix Vivado and IP versions, or if you have
stale build artifacts from a previous build. Try cleaning the build
directory; this often resolves the issue.

To clean it up, go to the build directory (cd
`/home/eg26648/uhd-git/fpga/usrp3/top/x400/`) and clean everything so that
Vivado can regenerate it by running:

    make cleanall

To be sure you removed the offending IP files, you can also run:

    rm -r build-ip

Make sure the directory in the error message is deleted. As a Vivado
version check, you can run:

    source setupenv.sh

This should run successfully without error and report that it found the
correct Vivado version (`v2021.1_AR76780`). After that, try building again.

Wade

On Thu, Mar 5, 2026 at 12:48=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Sorry for spamming this list =E2=80=94 it was my mistake =E2=80=94 the Vi=
vado patch was
> applied incorrectly such that it reported the new version but did not
> actually update the software.
> ------------------------------
> *From:* Eugene Grayver
> *Sent:* Thursday, March 5, 2026 9:45 AM
> *To:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* IP locked for X440 RFNoC build
>
> I am trying to rebuild X440 image X4_200.  No changes to the yaml (yet).
> Getting an error:
>
>  [filemgmt 20-1366] Unable to reset target(s) for the following file is
> locked:
> /home/eg26648/uhd-git/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-2e/hb=
47_1to2/hb47_1to2.xci
>
>
>    - The Vivado version is correct.
>    - Tried it for both tag 4.9.0 and the master branch =E2=80=94 same err=
or
>
>
> Suggestions?
>
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000005174064dca827a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Usually this happens when people mix Vivado and IP version=
s, or if you have stale build artifacts from a previous build. Try cleaning=
 the build directory; this often resolves the issue.<br><br>To clean it up,=
 go to the build directory (cd `/home/eg26648/uhd-git/fpga/usrp3/top/x400/`=
) and clean everything so that Vivado can regenerate it by running:<br><br>=
=C2=A0 =C2=A0 make cleanall<br><br><div>To be sure you removed the offendin=
g IP files, you can also run:</div><div><br></div><div>=C2=A0 =C2=A0 rm -r =
build-ip</div><div><br></div><div>Make sure the directory in the error mess=
age is deleted. As a Vivado version check, you can run:</div><div><br></div=
><div>=C2=A0 =C2=A0 source setupenv.sh</div><div><br></div><div>This should=
 run successfully without error and report that it found the correct Vivado=
 version (`v2021.1_AR76780`). After that, try building again.</div><div><br=
></div><div>Wade</div></div><br><div class=3D"gmail_quote gmail_quote_conta=
iner"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Mar 5, 2026 at 12:48=E2=
=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">euge=
ne.grayver@aero.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div class=3D"msg-7737014955366967142">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Sorry for spamming this list =E2=80=94 it was my mistake =E2=80=94 the Viva=
do patch was applied incorrectly such that it reported the new version but =
did not actually update the software.</div>
<div id=3D"m_7270596939271272014appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_7270596939271272014divRplyFwdMsg" dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b> =
Eugene Grayver<br>
<b>Sent:</b> Thursday, March 5, 2026 9:45 AM<br>
<b>To:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> IP locked for X440 RFNoC build </font>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I am trying to rebuild X440 image X4_200.=C2=A0 No changes to the yaml (yet=
).=C2=A0 Getting an error:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0[filemgmt 20-1366] Unable to reset target(s) for the following file i=
s locked: /home/eg26648/uhd-git/fpga/usrp3/top/x400/build-ip/xczu28drffvg15=
17-2e/hb47_1to2/hb47_1to2.xci</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">The Vivado version is correct.</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Tried it for both tag 4.9.0 and the master branc=
h =E2=80=94 same error</div>
</li></ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Suggestions?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_7270596939271272014x_Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000005174064dca827a--

--===============7888547502969835566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7888547502969835566==--
