Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D689C789057
	for <lists+usrp-users@lfdr.de>; Fri, 25 Aug 2023 23:24:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8AA75384CFA
	for <lists+usrp-users@lfdr.de>; Fri, 25 Aug 2023 17:24:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692998679; bh=Q18hhxrVG0uHOp5X5LL5jV1s4LiV3ValiYthdTcu9tw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=p0sKDuWzv2Mq/LjbRGmZ0e/9ncrOaWLTAlZS08esVo6BnMeGKl5MLrgmwJXrTNxff
	 Q9bN4D0YcJaui3dRPGmSOs23YcrFAe2bWVidRrxNlQsELScbspto24ZHF/ldk1xXhL
	 QTsOJw67iGCRrSBvaC67TgRPmKDkleVnUAFsws/I8249w0NB9qaMdVuDo2nZfAqKjJ
	 bw/FRC1GaNaM7pPw7t79QxZSpbwtaRB6EnSEJqh1FVURFfl7BQlVfQBGuXaSayJkY/
	 MqrEBemarIAsjrKEMRQTux4h0heKhiY5HBCatmCLDElIsEyBFKza5RrZ5zG3eGEgjq
	 34NO35Yv29Lng==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A521384CFA
	for <usrp-users@lists.ettus.com>; Fri, 25 Aug 2023 17:24:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="falCOH1B";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-99bf3f59905so164736866b.3
        for <usrp-users@lists.ettus.com>; Fri, 25 Aug 2023 14:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692998646; x=1693603446;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=foBdiZ+FlNluhmfYxuKntkGCAAfPPXmn+lQtPiN6Yu0=;
        b=falCOH1BwW2EkHJdHfUjUTYKBHi96ZYZSgNLX1WP+xe4xgFhvaAiMdvj3Muw29vaeN
         okAIBQMfXs2QVj+xm63DpOm5tpjNYsC9OeukPaqNNiTJmjIe5K/+Py+0quQHptcnKfBG
         Dxml/DGalXa/sKHU6gtQW6wBSE/b7QUA/6HRfCEYjVreojhs0W4zJjioUNZ+UOWYM/qL
         E4HxhWFx/C6GiFd06vTCVgWf9wp/bTPUKn6Obk6njOD4AUd8FLMeUam4SsZMl8fijOmh
         UeaM1JhNff0DAT0mVJiJFn2pD1Mv2BTusKItVFn4aTVm7j0UUi4n6BDVM9izLpWoWnpT
         02Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692998646; x=1693603446;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=foBdiZ+FlNluhmfYxuKntkGCAAfPPXmn+lQtPiN6Yu0=;
        b=LmOqKUDIdtCTapqT8EJNjIZwgjHdE2EgSvRqLb+nUwpf5h/BLmRK2bu/FyF8mu9kZU
         9rxCEIKSbyEG6k7N1js58Zkj6Pmf+qRURahzXSzvZSataRyeom0fw4uq9c2yTzgiC0nE
         dDHeb2TcIk1rtYknVAXsn3TExIZjZttwVe10FIwMy+ySasM6dG6KQXB4lpb+MFcURvvN
         Gi59QEMuYGxbp76SI761i0EOJXqAUxVDe5oDHGNcaUNcNkW3fZdmhUGwq+5XiCKq5FR6
         vXV5GcIR70Jh2pXUVRDRaOxlrlgkSyo0V2t54uQ3rrvTIeqdex2OifAv3kLbP5AqZTyR
         VRdQ==
X-Gm-Message-State: AOJu0YxjhwpDrKqsEtZWU7tYIUhk6EEn6dRocJK5SYjMyx8s8Rz+Epe1
	n/C8MBfSetChfEOc7KMcPbr0nu394jexNRDjILWEBBS2NFs+1CeYd6V2VQ==
X-Google-Smtp-Source: AGHT+IGF+sKclICmkdRVr2PZZF90UEEJvhGxPoPhHPiR8khV86jLNVqO+eT1J3jAmLpu6mylofOFZO8lE+yjHbxuT6Q=
X-Received: by 2002:a17:906:20e:b0:9a1:c991:a514 with SMTP id
 14-20020a170906020e00b009a1c991a514mr8155532ejd.63.1692998646049; Fri, 25 Aug
 2023 14:24:06 -0700 (PDT)
MIME-Version: 1.0
References: <fZMcEuiiMIG56YAz3GaFj1i28Xuj3IRpNU29G8pEKQ@lists.ettus.com>
 <CAFche=jm3ZgLMg8=3Kh8oEuEN4OmE7woeBY4H5-24zHGevg-Og@mail.gmail.com> <BN2P110MB10270BC017295C28908001889FE3A@BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BN2P110MB10270BC017295C28908001889FE3A@BN2P110MB1027.NAMP110.PROD.OUTLOOK.COM>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 25 Aug 2023 16:23:49 -0500
Message-ID: <CAFche=jZMQw6a13AdRPyQN6gzddft5i7QD8tSV=61v-9jY-3hg@mail.gmail.com>
To: "Seal, Ryan L. [US-US]" <RYAN.SEAL@dynetics.com>
Message-ID-Hash: QSPRIKZVPVZCJOPV3APJHO6YFMGVSITJ
X-Message-ID-Hash: QSPRIKZVPVZCJOPV3APJHO6YFMGVSITJ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: EXTERNAL: Re: X410 FPGA build failure with UHD-4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QSPRIKZVPVZCJOPV3APJHO6YFMGVSITJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3697508477267561841=="

--===============3697508477267561841==
Content-Type: multipart/alternative; boundary="000000000000e74cb40603c5f658"

--000000000000e74cb40603c5f658
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For reference, I typically install the dependencies for building UHD as
described here:
https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain=
_(UHD_and_GNU_Radio)_on_Linux#Update_and_Install_dependencies

Can you check which version of make you're using? I'm using GNU Make 4.2.1
on Ubuntu 20.04.

Perhaps you could post the console output somewhere and the build.log file?
I'm still not clear on the initial problem.

The dev_config.json file isn't required.

Wade


On Fri, Aug 25, 2023 at 9:50=E2=80=AFAM Seal, Ryan L. [US-US] <
RYAN.SEAL@dynetics.com> wrote:

> * CAUTION: *This email originated from outside of Leidos. Be cautious
> when clicking or opening content.
>
> Hey Wade,
>
> Here is the sequence of events:
>
>    - git clone from github
>    - git checkout UHD-4.4
>    - cd to x400 folder
>    - source setupenv.sh   (vivado 2021.1 with the AR patch applied)
>    - make cleanall
>    - make X410_X4_200 SYNTH=3D1 GUI=3D1   (<-- added those options so I c=
ould
>    open the block design and take a peek at the clocks and RFDC config)
>
> I am building on Linux Mint 20.3 Una, which is essentially Ubuntu 20.04
> from a package perspective. I cut/pasted the dependency list from one of
> the setup docs, all of the packages were pulled in correctly, and I can
> talk to the X410 and run some of the example files.
>
> I didn't make any modifications to the repo,  I want to get a default
> image successfully built before going any further. I've gotten through
> synthesis now, but haven't tried implementation and bitstream generation
> yet. I'm working from the GUI, so let me go back and check the
> RFNOC_EDGE_TBL_FILE definition and see exactly what's going on there.
>
> Also, the "dev_config.json" file was missing from the x400 folder, not
> sure if that's another generated file, or just missing from the branch.  =
I
> copied that from the x300 folder.
>
> Thanks,
>
> Ryan
>
> ------------------------------
> *From:* Wade Fife <wade.fife@ettus.com>
> *Sent:* Thursday, August 24, 2023 11:12 PM
> *To:* Seal, Ryan L. [US-US] <ryan.seal@dynetics.com>
> *Cc:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* EXTERNAL: Re: [USRP-users] X410 FPGA build failure with UHD-4.=
4
>
>
> *CAUTION: *This email originated from outside of Leidos. Be cautious when
> clicking or opening content.
>
> Hi Ryan,
>
> What was the problem/error message that suggested that folder wasn't bein=
g
> pulled in properly? The "syntax error" implies that the
> `RFNOC_EDGE_TBLE_FILE definition isn't being set correctly, but the
> makefile should pass that in based on the target you're building.
>
> Did you make modifications to the repo or run rfnoc_image_builder? If so,
> maybe try building the unmodified branch first to make sure everything is
> working. For example:
>
> source setupenv.sh
> make cleanall
> make X410_X4_200
>
> Also, what OS are you using to build on?
>
> Wade
>
> On Thu, Aug 24, 2023 at 11:16=E2=80=AFAM <ryan.seal@dynetics.com> wrote:
>
> I attempted to build an FPGA image on the UHD-4.4 branch with Vivado
> v2021.1_AR76780 (64-bit) using:
>
> *make X410_X4_200 SYNTH=3D1 GUI=3D1*
>
> When the IP cores are generated, the following folder is not pulled in
> properly:
>
> *uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma_ex/impo=
rts
> *
>
> As a temporary work-around, I was able to generate the example files from
> the xci file in
>
> *uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma*
>
> and then copied the imports into my build directory and kicked off
> synthesis once again via GUI.
>
> There was also a syntax error in x410_200_rfnoc_image_core.v. The forward
> ticks on line 182 were causing an issue:
>
> *localparam EDGE_TBL_FILE =3D `"`RFNOC_EDGE_TBL_FILE`";*
>
> Can someone provide some guidance? I=E2=80=99m not sure if I made a mista=
ke when I
> pulled something in, or I=E2=80=99m one of the few that attempted to buil=
d the
> image.
>
> Going forward, I need to make clock modifications and wanted to get a loo=
k
> at the clock structure in vivado to find the best path forward. To
> summarize, I need to change the 245.76 clocks to 204.8. I would also like
> to use the RFDC directly if possible (static configuration is fine). That
> would give me what I need without the DUC/DDC RFNoC blocks. If this isn=
=E2=80=99t
> feasible then I=E2=80=99ll need some rate-changing filters and additional=
 clocks to
> adjust downstream.
>
> - Ryan
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--000000000000e74cb40603c5f658
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>For reference, I typically install the dependencies f=
or building UHD as described here:</div><div><a href=3D"https://kb.ettus.co=
m/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio=
)_on_Linux#Update_and_Install_dependencies">https://kb.ettus.com/Building_a=
nd_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#U=
pdate_and_Install_dependencies</a></div><div><br></div><div>Can you check w=
hich version of make you&#39;re using? I&#39;m using GNU Make 4.2.1 on Ubun=
tu 20.04.<br></div><div><br></div><div>Perhaps you could post the console o=
utput somewhere and the build.log file? I&#39;m still not clear on the init=
ial problem.</div><div><br></div><div>The=20
dev_config.json file isn&#39;t required.<br></div><div><br></div><div>Wade<=
br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Aug 25, 2023 at 9:50=E2=80=AFAM Seal, Ryan =
L. [US-US] &lt;<a href=3D"mailto:RYAN.SEAL@dynetics.com">RYAN.SEAL@dynetics=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div class=3D"msg-7703151084044794933">




<div dir=3D"ltr">
<div style=3D"width:85%">
<div style=3D"background-color:rgb(255,255,255);width:100%;padding:4pt;font=
-size:10pt;line-height:14pt;font-family:&quot;Arial&quot;;color:black;text-=
align:left;border:2pt solid rgb(255,165,0)">
<strong><span style=3D"color:rgb(0,0,0)">
<p>CAUTION:</p></span> </strong>This email originated from outside of Leido=
s. Be cautious when clicking or opening content.
<p></p>
</div>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hey Wade,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<span style=3D"font-size:12pt;margin:0px;color:rgb(0,0,0)">Here is the sequ=
ence of events:</span>
<div style=3D"font-size:12pt;margin:0px;color:rgb(0,0,0)">
<ul>
<li style=3D"list-style-type:&quot;- &quot;"><span style=3D"margin:0px">git=
 clone from github</span></li><li style=3D"list-style-type:&quot;- &quot;">=
<span style=3D"margin:0px">git checkout UHD-4.4</span></li><li style=3D"lis=
t-style-type:&quot;- &quot;">cd to x400 folder</li><li style=3D"list-style-=
type:&quot;- &quot;">source setupenv.sh=C2=A0 =C2=A0(vivado 2021.1 with the=
 AR patch applied)</li><li style=3D"list-style-type:&quot;- &quot;">make cl=
eanall</li><li style=3D"list-style-type:&quot;- &quot;">make X410_X4_200 SY=
NTH=3D1 GUI=3D1=C2=A0 =C2=A0(&lt;-- added those options so I could open the=
 block design and take a peek at the clocks and RFDC config)</li></ul>
</div>
<div id=3D"m_-7703151084044794933appendonsend" style=3D"font-size:12pt;marg=
in:0px;color:rgb(0,0,0)">
I am building on Linux Mint 20.3 Una, which is essentially Ubuntu 20.04 fro=
m a package perspective. I cut/pasted the dependency list from one of the s=
etup docs, all of the packages were pulled in correctly, and I can talk to =
the X410 and run some of the example
 files.=C2=A0</div>
<span id=3D"m_-7703151084044794933appendonsend" style=3D"font-size:12pt;mar=
gin:0px;color:rgb(0,0,0)"></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I didn&#39;t make any modifications to the repo,=C2=A0 I want to get a defa=
ult image successfully built before going any further. I&#39;ve gotten=C2=
=A0<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:=
12pt">through synthesis now, but haven&#39;t tried
 implementation and bitstream generation yet.=C2=A0<span id=3D"m_-770315108=
4044794933appendonsend" style=3D"font-size:12pt;margin:0px;color:rgb(0,0,0)=
">I&#39;m working from the GUI, so let me go back and check the RFNOC_EDGE_=
TBL_FILE definition and see exactly
 what&#39;s going on there.=C2=A0</span><br>
<span id=3D"m_-7703151084044794933appendonsend" style=3D"font-size:12pt;mar=
gin:0px;color:rgb(0,0,0)"></span></span></div>
<div id=3D"m_-7703151084044794933appendonsend" style=3D"font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-7703151084044794933appendonsend" style=3D"font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Also, the &quot;dev_config.json&quot; file was missing from the x400 folder=
, not sure if that&#39;s another generated file, or just missing from the b=
ranch.=C2=A0 I copied that from the x300 folder.=C2=A0</div>
<div id=3D"m_-7703151084044794933appendonsend" style=3D"font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-7703151084044794933appendonsend" style=3D"font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks,</div>
<div id=3D"m_-7703151084044794933appendonsend" style=3D"font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-7703151084044794933appendonsend" style=3D"font-family:Calibri=
,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Ryan</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-7703151084044794933divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt;color:rgb(0,0,0)"><b>From:</b> =
Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade=
.fife@ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, August 24, 2023 11:12 PM<br>
<b>To:</b> Seal, Ryan L. [US-US] &lt;<a href=3D"mailto:ryan.seal@dynetics.c=
om" target=3D"_blank">ryan.seal@dynetics.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> EXTERNAL: Re: [USRP-users] X410 FPGA build failure with UHD=
-4.4</font>
<div>=C2=A0</div>
</div>
<div>
<div style=3D"width:85%">
<div style=3D"width:100%;padding:4pt;font-size:10pt;line-height:14pt;font-f=
amily:Arial;text-align:left;border:2pt solid rgb(255,165,0);color:black;bac=
kground-color:rgb(255,255,255)">
<strong><span style=3D"color:rgb(0,0,0)"></span></strong>
<p><strong>CAUTION: </strong>This email originated from outside of Leidos. =
Be cautious when clicking or opening content.</p>
<p></p>
</div>
</div>
<div>
<div dir=3D"ltr">Hi Ryan,
<div><br>
</div>
<div>What was the problem/error message that suggested that folder wasn&#39=
;t being pulled in properly? The &quot;syntax error&quot; implies that the =
`RFNOC_EDGE_TBLE_FILE definition isn&#39;t being set correctly, but the mak=
efile should pass that in based on the target you&#39;re
 building.</div>
<div><br>
</div>
<div>Did you make modifications to the repo or run rfnoc_image_builder? If =
so, maybe try building the unmodified=C2=A0branch first to make sure everyt=
hing is working. For example:</div>
<div><br>
</div>
<div>source setupenv.sh</div>
<div>make cleanall</div>
<div>make X410_X4_200</div>
<div><br>
</div>
<div>Also, what OS are you using to build on?</div>
<div><br>
</div>
<div>Wade</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Thu, Aug 24, 2023 at 11:16=E2=80=AFAM &lt;<a href=3D"ma=
ilto:ryan.seal@dynetics.com" id=3D"m_-7703151084044794933OWA05757976-d757-c=
0a4-c381-e6c90c2d0314" target=3D"_blank">ryan.seal@dynetics.com</a>&gt; wro=
te:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<p>I attempted to build an FPGA image on the UHD-4.4 branch with Vivado v20=
21.1_AR76780 (64-bit) using:</p>
<p><strong>make X410_X4_200 SYNTH=3D1 GUI=3D1</strong></p>
<p>When the IP cores are generated, the following folder is not pulled in p=
roperly:</p>
<p><strong>uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma=
_ex/imports
</strong></p>
<p>As a temporary work-around, I was able to generate the example files fro=
m the xci file in
</p>
<p><strong>uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma</strong></p>
<p>and then copied the imports into my build directory and kicked off synth=
esis once again via GUI.
</p>
<p>There was also a syntax error in x410_200_rfnoc_image_core.v. The forwar=
d ticks on line 182 were causing an issue:</p>
<p><strong>localparam EDGE_TBL_FILE =3D `&quot;`RFNOC_EDGE_TBL_FILE`&quot;;=
</strong> </p>
<p>Can someone provide some guidance? I=E2=80=99m not sure if I made a mist=
ake when I pulled something in, or I=E2=80=99m one of the few that attempte=
d to build the image.</p>
<p>Going forward, I need to make clock modifications and wanted to get a lo=
ok at the clock structure in vivado to find the best path forward. To summa=
rize, I need to change the 245.76 clocks to 204.8. I would also like to use=
 the RFDC directly if possible (static
 configuration is fine). That would give me what I need without the DUC/DDC=
 RFNoC blocks. If this isn=E2=80=99t feasible then I=E2=80=99ll need some r=
ate-changing filters and additional clocks to adjust downstream.
</p>
<p>- Ryan</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" id=
=3D"m_-7703151084044794933OWA35ebc0f7-89bf-b79f-c068-23f927c3358e" target=
=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" id=3D"m_-7703151084044794933OWAf809bc19-e333-93b2-d14c-6c93633082a=
3" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</div>

</div></blockquote></div>

--000000000000e74cb40603c5f658--

--===============3697508477267561841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3697508477267561841==--
