Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B924787EEF
	for <lists+usrp-users@lfdr.de>; Fri, 25 Aug 2023 06:13:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8B69384D42
	for <lists+usrp-users@lfdr.de>; Fri, 25 Aug 2023 00:13:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692936785; bh=E66DX9vKlZ7OvxG1I7hKtuuJQ9T4mnp8h8Nz0bqyjmc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IBfnQlKes6uL4BFMnNytTb3Y79r7kkcn24UmOPkx/d7zabh1kDiv2Ft55UMOFyFv8
	 JTtMz9NFulP4It8PHylFCzubSywUv+8hxRq6CL4LN+w0ZZrXMZiECsCMrmSSqLtbnL
	 2RXTnY9MdVTaeJwziEsNQOuVZVdiHpyWtGrja69g+VmC2MDQ2AU+8DHdberxCvq0+Q
	 lsKWuCPRT1Gj+QTYQbebQzi1EkVtmaS0nHwZHbJgAkRR8opaXGLr+RUF4BQHZxvOLz
	 kqS2NQWYDv4QK4mnhRUmG+CjpR0oqQqD1wL0om/67dcWmBzFPSWBJK+9ldMhzGzsoO
	 yi6MTJ/UdAmCQ==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id C4533384D14
	for <usrp-users@lists.ettus.com>; Fri, 25 Aug 2023 00:12:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="UAKRTwxn";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-99bf8e5ab39so52746566b.2
        for <usrp-users@lists.ettus.com>; Thu, 24 Aug 2023 21:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692936754; x=1693541554;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MBjDQPY+NfccCN8kaBO0VWYoLffW15ZmSHZtH3aqZIY=;
        b=UAKRTwxnrF9PoBokjRf1ScyY0cZilSOsLHLH3ZXAZwDiR/JzWT8Bud/QLK+V83PKje
         upTsR6LYzhK7juNBSfETJaOge9gEg274SdgA/TYKUXphE63wiy/8dwxoJHZS5yC/5i/5
         fefHCUTH53vQoYzhPLRlfJL3md7a5DvTw41FUS/dbeneuTPezLMjvzzbJ2EQb3n4NBM7
         MxBcDoin+jI+uPFLcujSO17j4NcUGNYWUE79M6mZXyreTliJ5pirKlL6SNTdS1KEuFhq
         ojDlkvmVnHohClBcIMKGciAX1i9V1D6zwGgX2WihvrmucgXWWyNrum+pR/1aTeDpZWna
         xHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692936754; x=1693541554;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MBjDQPY+NfccCN8kaBO0VWYoLffW15ZmSHZtH3aqZIY=;
        b=TBBarIN56akzbFzUfLWdJC5vqKPQ9uCqIQAHEYuU/2yt+mS0nkgNsE0cB+ze3ThVWE
         O4XdD4eNy8nMA6ovAywLLeCf9+egFfHiCFKnw7xAtoSwbS8tq5OzlrONbW9A8XKVvId4
         OLVeWW4D/ko5I4T8EWO5DtP/efFfjUTjW+urF+FtXJuNIRefTmVIhjl6jmgDOuXvN1cy
         OVibzl+7iDIzFV/3iYX2iZW8vwhCiBOs9oM2xQQN6dmRfAZgUAzRW0A7WQiYyFV5M4B2
         3wAMFADnVAT5iqh41TMMUI/vmBfJOAvawJschUnzvTQf8hT3y1GZ1rdpGvloW3Sg68O3
         wTxw==
X-Gm-Message-State: AOJu0YzGtTQeh8x/Qvr8oqsL6qIbWvbRxqI+H/5sUblhcR5Ke74qbwlc
	5a2nL8YfftiS9WV0PpMt1jdDWcxEncvzYb51zTbVA7Dz+O0hNg6qYBk=
X-Google-Smtp-Source: AGHT+IGkb6pJoYZR8pIebLcRw+fUB1aLWesBdlEwXFhVI/3xoP1AIZBmUYAVkLgrWhln/JmWgW2VM2xJ6+I27ScnSLE=
X-Received: by 2002:a17:906:295:b0:99b:d178:f05f with SMTP id
 21-20020a170906029500b0099bd178f05fmr13535546ejf.71.1692936754357; Thu, 24
 Aug 2023 21:12:34 -0700 (PDT)
MIME-Version: 1.0
References: <fZMcEuiiMIG56YAz3GaFj1i28Xuj3IRpNU29G8pEKQ@lists.ettus.com>
In-Reply-To: <fZMcEuiiMIG56YAz3GaFj1i28Xuj3IRpNU29G8pEKQ@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 24 Aug 2023 23:12:17 -0500
Message-ID: <CAFche=jm3ZgLMg8=3Kh8oEuEN4OmE7woeBY4H5-24zHGevg-Og@mail.gmail.com>
To: ryan.seal@dynetics.com
Message-ID-Hash: JGMQFSV7O4TIQWBG2NM2EMRWFABPXNVW
X-Message-ID-Hash: JGMQFSV7O4TIQWBG2NM2EMRWFABPXNVW
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 FPGA build failure with UHD-4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JGMQFSV7O4TIQWBG2NM2EMRWFABPXNVW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8769723008105962956=="

--===============8769723008105962956==
Content-Type: multipart/alternative; boundary="000000000000defca50603b78da0"

--000000000000defca50603b78da0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ryan,

What was the problem/error message that suggested that folder wasn't being
pulled in properly? The "syntax error" implies that the
`RFNOC_EDGE_TBLE_FILE definition isn't being set correctly, but the
makefile should pass that in based on the target you're building.

Did you make modifications to the repo or run rfnoc_image_builder? If so,
maybe try building the unmodified branch first to make sure everything is
working. For example:

source setupenv.sh
make cleanall
make X410_X4_200

Also, what OS are you using to build on?

Wade

On Thu, Aug 24, 2023 at 11:16=E2=80=AFAM <ryan.seal@dynetics.com> wrote:

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

--000000000000defca50603b78da0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ryan,<div><br></div><div>What was the problem/error mes=
sage that suggested that folder wasn&#39;t being pulled in properly? The &q=
uot;syntax error&quot; implies that the `RFNOC_EDGE_TBLE_FILE definition is=
n&#39;t being set correctly, but the makefile should pass that in based on =
the target you&#39;re building.</div><div><br></div><div>Did you make modif=
ications to the repo or run rfnoc_image_builder? If so, maybe try building =
the unmodified=C2=A0branch first to make sure everything is working. For ex=
ample:</div><div><br></div><div>source setupenv.sh</div><div>make cleanall<=
/div><div>make X410_X4_200</div><div><br></div><div>Also, what OS are you u=
sing to build on?</div><div><br></div><div>Wade</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 24, 2023=
 at 11:16=E2=80=AFAM &lt;<a href=3D"mailto:ryan.seal@dynetics.com">ryan.sea=
l@dynetics.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><p>I attempted to build an FPGA image on the UHD-4.4 branch w=
ith Vivado v2021.1_AR76780 (64-bit) using:</p><p><strong>make X410_X4_200 S=
YNTH=3D1 GUI=3D1</strong></p><p>When the IP cores are generated, the follow=
ing folder is not pulled in properly:</p><p><strong>uhd/fpga/usrp3/top/x400=
/build-ip/xczu28drffvg1517-1e/xge_pcs_pma_ex/imports </strong></p><p>As a t=
emporary work-around, I was able to generate the example files from the xci=
 file in </p><p><strong>uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma</strong></p>=
<p>and then copied the imports into my build directory and kicked off synth=
esis once again via GUI. </p><p>There was also a syntax error in x410_200_r=
fnoc_image_core.v. The forward ticks on line 182 were causing an issue:</p>=
<p><strong>localparam EDGE_TBL_FILE =3D `&quot;`RFNOC_EDGE_TBL_FILE`&quot;;=
</strong>  </p><p>Can someone provide some guidance? I=E2=80=99m not sure i=
f I made a mistake when I pulled something in, or I=E2=80=99m one of the fe=
w that attempted to build the image.</p><p>Going forward, I need to make cl=
ock modifications and wanted to get a look at the clock structure in vivado=
 to find the best path forward. To summarize, I need to change the 245.76 c=
locks to 204.8. I would also like to use the RFDC directly if possible (sta=
tic configuration is fine). That would give me what I need without the DUC/=
DDC RFNoC blocks. If this isn=E2=80=99t feasible then I=E2=80=99ll need som=
e rate-changing filters and additional clocks to adjust downstream. </p><p>=
- Ryan</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000defca50603b78da0--

--===============8769723008105962956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8769723008105962956==--
