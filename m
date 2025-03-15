Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B85EA630FD
	for <lists+usrp-users@lfdr.de>; Sat, 15 Mar 2025 18:49:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE36838618A
	for <lists+usrp-users@lfdr.de>; Sat, 15 Mar 2025 13:49:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1742060992; bh=1/b9wHNbmMRr5B6CwV5LvLyxC/bY0diwIY/b/XqFm9E=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=sVbYwoBwN9PCXo/ByGBSPMwGe9EyjKHEo6nV1Z9TElsABhDwjEVSeHApgk19P+733
	 jxsAtxhHNDqqBvMlDNLDhGNphVap6m4EjFIOW7iVWPgorZv5Fn3nMbPNUPvQQNHdwe
	 NsvfUXg53qMPbohPsIgGGIa3bv0o1Vsyw3Jp98CfyqRUk8CP6C6Bm1FsslX14AA6sM
	 8QGMTbBe8+V2CIkSp/XkEerWcM0NRUIgjdQ81lcaxv8wD6aZ56kVVghoHnxahaWSO8
	 I5kKUL8ih9n5fzKRZMa2743cEw8xRXz5YkxmNEjdy1l+nqMx1B03BdpV36AQA5sjnx
	 tyhIsEwOzWFaQ==
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by mm2.emwd.com (Postfix) with ESMTPS id A36F6385E12
	for <usrp-users@lists.ettus.com>; Sat, 15 Mar 2025 13:48:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XNjll5v+";
	dkim-atps=neutral
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3fb3f4bf97aso900551b6e.2
        for <usrp-users@lists.ettus.com>; Sat, 15 Mar 2025 10:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742060923; x=1742665723; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hFCJjh+PsiJpNjE/Tml+15MGNOKX+/8fDY7Mtu36A8Q=;
        b=XNjll5v+o21nETjVuVJXhlwMFPIaAwXYQ2MmHQHJcygbYDcReixF5CSiuF1wWsMsJd
         W2BEDyAApMUROBL3jRCw3K2RafK0uz6IbQYVEJro8DHubHeRW0bGxwKVKL2zelcyDwZP
         wtFfa8dCabi4Uuca/BwCsEn1w8vvaU+tkHpZuMomgRz5BZ7mjr45s0BV5k5IHgiUy02z
         m+lVEiT2obs9YnCzc1L3zyoaMaq/bM2JQxfDdbqG+qLzotMltzunegbjTd5NZGK1AC9r
         aG7ylD6rYpzGWwnGUH5eTFKeTMiOUzcyDksKollTmeqA7wixm/5IWrPgt7VYLZPCVYYc
         bcwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742060923; x=1742665723;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hFCJjh+PsiJpNjE/Tml+15MGNOKX+/8fDY7Mtu36A8Q=;
        b=wGB6RN1LYmQCOjpZp4Ek6ANXS0jUD9lwSLt0q/95m0Pa/+ODmihl3RHXS/DeN7V1C1
         RDXtLUrZn0h2g7hhryfMWyHBMkfiEP8vJWyPQssFw3BX784IsspOavk2k0I0Lncm9oDs
         QfA1VtMRpVyx+VIVmpwSIvHeWS2y0TzUP6OBzE925aeiVHpcgZZg75V+yhj0HwzmawOE
         6HSENbxva5Q/7DEaoaxHEwfuZOLGGaS1PlwRZC0vDQXHXP/xmR+C5k8Q0RKq4mzVKahV
         v9ZvytR+IYPiwWECy3K5FJOkvXXW6DtKdLvIY3xPn1Mwizahf7Udqv+x4zGTYR+3jX7k
         wmGw==
X-Forwarded-Encrypted: i=1; AJvYcCVO3cUY047ZE+Mg/AS9PMEMrw9EN9LE3LQzgEcPOA6Bd0byztt9bnQ8NSdLnHtmQ/r6I6dnQTmBcB8M@lists.ettus.com
X-Gm-Message-State: AOJu0Yzw8XTQKLhJuh0CvVmptn0oHSjDvfQNWqXa0vF3w3als+cGxlY0
	Y+bwEgv2IbhMCnxr7hv+obtzA8qdTxkjXm2iH5YlPBmY2ePAU1Vi7F3utS+gEWq0DTMJ6kHOqNJ
	eDf8g+R/X8L3QgrnLAki/+f9nFlFIKsCg
X-Gm-Gg: ASbGncu0dclRpjtr8QqXnIZvR8v/71ffUGy3RbaWCMitanDx/2O2w6nXYnuj/5oJged
	YayHOqKCNbtZOAHQtFbegfO6QCBmPWOtRlyJehkUG9CLbdeL80mNl3Scls8aEenBSfz+jJBFJtr
	wKIoxaBj4tIQpe73pgEkunEMqgUg==
X-Google-Smtp-Source: AGHT+IGeMurx40pIVW7ePtH5c0yglf5pAZnUeNo6b+IX/Lf75TK8RR5YirQpSAChmXs9MB7vekUXrnLE8J7FBeVhz8I=
X-Received: by 2002:a05:6808:1793:b0:3f7:da57:3952 with SMTP id
 5614622812f47-3fdeefed840mr3950113b6e.21.1742060922341; Sat, 15 Mar 2025
 10:48:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAE=q3UP7mSpKn7+BSwKL_8HeVjXcsQe6QH+N_QqZQPzpsz66fQ@mail.gmail.com>
 <CAFche=gXQJ0sD84TB5pk4PMRxrNCrGPJZ28-cgjMjxH4ox2CjA@mail.gmail.com> <AM9PR06MB7826B55E49B0552FFC6292B2ABD32@AM9PR06MB7826.eurprd06.prod.outlook.com>
In-Reply-To: <AM9PR06MB7826B55E49B0552FFC6292B2ABD32@AM9PR06MB7826.eurprd06.prod.outlook.com>
From: David <vitishlsfan21@gmail.com>
Date: Sat, 15 Mar 2025 10:48:31 -0700
X-Gm-Features: AQ5f1JokPYW9sIqQCNyKHRSkIVbEnQpgTLLf7MCUYvVfQNHqFaSLTSGPKqnkBwI
Message-ID: <CAE=q3UNDLyNmY8jEhf3cL0MbZz5wQXuQQOMUZ8xSMG938udFtg@mail.gmail.com>
To: Sam Lane <sam.lane@surrey.ac.uk>
Message-ID-Hash: YBP6HMRTKKEGESBY5HNTRVRG5QVJ6MFO
X-Message-ID-Hash: YBP6HMRTKKEGESBY5HNTRVRG5QVJ6MFO
X-MailFrom: vitishlsfan21@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder error: trying to tool lock on already tool locked arc
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YBP6HMRTKKEGESBY5HNTRVRG5QVJ6MFO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8649621666465670342=="

--===============8649621666465670342==
Content-Type: multipart/related; boundary="0000000000007502710630652af1"

--0000000000007502710630652af1
Content-Type: multipart/alternative; boundary="0000000000007502700630652af0"

--0000000000007502700630652af0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wade and Sam,

The repeat FPGA build script was very useful. I was able to let it run and
find a build solution. That will let me proceed with my project, but I
still want to nail down why this showed up.

Some additional info: my design does not meet timing constraints, but it
still builds the bit file. This has been the case for some time before this
tool lock error came up. The bit file still works for my use case, so a
failure for timing is still a success to me. The error in the
post_route_timing_summary.rpt is:

*Slack (VIOLATED) :        -0.948ns  (required time - arrival time)*
*  Source:
 x300_core/bus_int_i/rfnoc_sandbox_i/b_X0_6/noc_shell_X_i/pulse_stretch_min=
_ce/state_reg_replica/C*
*                            (rising edge-triggered cell FDRE clocked by
ce_clk  {rise@0.000ns fall@2.333ns period=3D4.667ns})*
*  Destination:
x300_core/bus_int_i/rfnoc_sandbox_i/b_X0_6/noc_shell_X_i/ctrlport_endpoint_=
i/gen_async_fifos.out_fifo_i/o_rst_sync_i/synchronizer_false_path/stages[0]=
.value_reg[0][0]/D*
*                            (rising edge-triggered cell FDRE clocked by
bus_clk_div2  {rise@0.000ns fall@5.333ns period=3D10.667ns})*
*  Path Group:             bus_clk_div2*

The timing constraint slack is happening in my X block noc shell, most
certainly because of what I am doing in my verilog design. However, because
the bit file "works" as far as the output I am expecting, I made a design
decision to continue on while not making the constraint. All of my useful
work is done in IQ, and the noc shell slack seems to be on the ctrlport.

I modified the script to continue on success and record success/failures to
a csv. I am getting 19 failures and 11 successful builds over the 30 runs I
did.

[image: image.png]

My next set of 30 runs will not change the build seed to get more data.

Thanks,

David


On Thu, Mar 13, 2025 at 10:51=E2=80=AFAM Sam Lane <sam.lane@surrey.ac.uk> w=
rote:

> Hi David & Wade,
>
> I would just like to chime in on this that I've been having exactly the
> same issue, repeatably, building for N310&320 series devices. I'm running=
 a
> heavily customised image with plenty of (known good) custom logic, and th=
e
> error comes up seemingly at random following a commit.
>
> The only (semi-) repeatable way I've found of fixing this is renaming the
> image_core.yml file from which rfnoc_image_builder is running. Strange, I
> know, though it seems to work 50% of the time, at least for me. If you fi=
nd
> any tricks other than those previously mentioned please let me know.
>
> I'm going to do some digging once I'm not under deadline-pressure, as thi=
s
> issue is getting on my nerves somewhat.
>
> Kind Regards,
> Sam
>
>
> ------------------------------
> *From:* Wade Fife <wade.fife@ettus.com>
> *Sent:* 06 March 2025 17:01
> *To:* David <vitishlsfan21@gmail.com>
> *Cc:* USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
> *Subject:* [USRP-users] Re: rfnoc_image_builder error: trying to tool
> lock on already tool locked arc
>
> Hi David,
>
> I'm surprised that you're seeing it that frequently. The Ettus continuous
> integration tests build FPGAs regularly and from what I understand this
> issue is pretty rare there. This makes me wonder if there's something abo=
ut
> the images you're building that causes this to reproduce more frequently
> for you. Can you estimate what percentage of unique builds (with a unique
> build seed or git hash) fail? Which FPGA image are you building? Does it
> have custom logic in it?
>
> You could use the repeat_fpga_build.py script to automate building the
> FPGA multiple times to get a successful build. It automates the process o=
f
> selecting a unique seed for each build and can even run multiple build jo=
bs
> at a time.
>
> Thanks,
>
> Wade
>
> On Mon, Mar 3, 2025 at 1:30=E2=80=AFPM David <vitishlsfan21@gmail.com> wr=
ote:
>
> Using UHD 4.6/Ubuntu 22.04/x310, I have built many images in the last yea=
r
> or so with rfnoc_image_builder. Recently in the last month, I get the
> following error on almost all images:
>
> [image: image.png]
>
> I have tried the following, after referencing this the known issues
> section in the USRP3 build instructions (
> https://files.ettus.com/manual/md_usrp3_build_instructions.html):
>
>    1.  doing the suggested and making a non-functional source code change
>    and recommitting the git
>    2. deleting the .git directory in both the block directory and the
>    uhd/ directory where the fpga build happens
>    3. changing the build seed in uhd/fpga/usrp3/top/x300/Makefile
>    4. Running on a different machine, copying the block source code and
>    using a different UHD git all together (private rehost vs the github U=
HD).
>    The vivado 2021.1 install is the same as its on a network file system
>
> These do not produce repeatable good results. Maybe once a week or once
> every two weeks one of these things will finish the build. This has been
> happening for about a month or two, and I don't know how else to
> troubleshoot.
>
> Any advice?
>
> Thanks,
>
> David
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000007502700630652af0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Wade and Sam,<div><br></div><div>The repe=
at FPGA build script was very useful. I was able to let it run and find a b=
uild solution. That will let me proceed with my project, but I still want t=
o nail down why this showed up.=C2=A0</div><div><br></div><div>Some additio=
nal info: my design does not meet timing constraints, but it still builds t=
he bit file. This has been the case for some time before this tool lock err=
or came up. The bit file still works for my use case, so a failure for timi=
ng is still a success to me. The error in the post_route_timing_summary.rpt=
 is:</div><div><br></div><div><div><b>Slack (VIOLATED) :=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 -0.948ns=C2=A0 (required time - arrival time)</b></div><div><b>=
=C2=A0 Source:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0x300_core/bus_int_i/rfnoc_sandbox_i/b_X0_6/noc_shell_X_i/pulse_stretch_m=
in_ce/state_reg_replica/C</b></div><div><b>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (rising =
edge-triggered cell FDRE clocked by ce_clk=C2=A0 {rise@0.000ns fall@2.333ns=
 period=3D4.667ns})</b></div><div><b>=C2=A0 Destination:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 x300_core/bus_int_i/rfnoc_sandbox_i/b_X0_6/noc_she=
ll_X_i/ctrlport_endpoint_i/gen_async_fifos.out_fifo_i/o_rst_sync_i/synchron=
izer_false_path/stages[0].value_reg[0][0]/D</b></div><div><b>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (rising edge-triggered cell FDRE clocked by bus_clk_div2=C2=A0 {=
rise@0.000ns fall@5.333ns period=3D10.667ns})</b></div><div><b>=C2=A0 Path =
Group:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bus_clk_div2</b></div=
></div><div><br></div><div>The timing constraint slack is happening in my X=
 block noc shell, most certainly because of what I am doing in my verilog d=
esign. However, because the bit file &quot;works&quot; as far as the output=
 I am expecting, I made a design decision to continue on while not making t=
he constraint. All of my useful work is done in IQ, and the noc shell slack=
 seems to be on the ctrlport.</div><div><br></div><div>I modified the scrip=
t to continue on success and record success/failures to a csv. I am getting=
 19 failures and 11 successful builds over the 30 runs I did.</div><div><br=
></div><div><img src=3D"cid:ii_m8ahnbqw3" alt=3D"image.png" width=3D"430" h=
eight=3D"562"><br></div><div><br></div><div>My next set of 30 runs will not=
 change the build seed to get more data.</div><div><br></div><div>Thanks,</=
div><div><br></div><div>David</div><div><br></div></div></div><br><div clas=
s=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Mar 13, 2025 at 10:51=E2=80=AFAM Sam Lane &lt;<a href=3D"mailto:=
sam.lane@surrey.ac.uk">sam.lane@surrey.ac.uk</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-7383608141472=
763259">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi David &amp; Wade,=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I would just like to chime in on this that I&#39;ve been having exactly the=
 same issue, repeatably, building for N310&amp;320 series devices. I&#39;m =
running a heavily customised image with plenty of (known good) custom logic=
, and the error comes up seemingly at random
 following a commit.=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
The only (semi-) repeatable way I&#39;ve found of fixing this is renaming t=
he image_core.yml file from which rfnoc_image_builder is running. Strange, =
I know, though it seems to work 50% of the time, at least for me. If you fi=
nd any tricks other than those previously
 mentioned please let me know.=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I&#39;m going to do some digging once I&#39;m not under deadline-pressure, =
as this issue is getting on my nerves somewhat.=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Kind Regards,<br>
Sam</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-7383608141472763259appendonsend"></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-7383608141472763259divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b>=
 Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wad=
e.fife@ettus.com</a>&gt;<br>
<b>Sent:</b> 06 March 2025 17:01<br>
<b>To:</b> David &lt;<a href=3D"mailto:vitishlsfan21@gmail.com" target=3D"_=
blank">vitishlsfan21@gmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: rfnoc_image_builder error: trying to tool =
lock on already tool locked arc</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi David,</div>
<div><br>
</div>
<div>I&#39;m surprised that you&#39;re seeing it that frequently. The Ettus=
 continuous integration tests build FPGAs regularly and from what I underst=
and this issue is pretty rare there. This makes me wonder if there&#39;s so=
mething about the images you&#39;re building that
 causes this to reproduce more frequently for you. Can you estimate what pe=
rcentage of unique builds (with a unique build seed or git hash) fail? Whic=
h FPGA image are you building? Does it have custom logic in it?</div>
<div><br>
</div>
<div>You could use the repeat_fpga_build.py script to automate building the=
 FPGA multiple times to get a successful build. It automates the process of=
 selecting a unique seed for each build and can even run multiple build job=
s at a time.</div>
<div><br>
</div>
<div>Thanks,</div>
<div><br>
</div>
<div>Wade</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Mon, Mar 3, 2025 at 1:30=E2=80=AFPM David &lt;<a href=
=3D"mailto:vitishlsfan21@gmail.com" target=3D"_blank">vitishlsfan21@gmail.c=
om</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div>Using UHD 4.6/Ubuntu 22.04/x310, I have built many images in the last =
year or so with rfnoc_image_builder. Recently in the last month, I get the =
following error on almost all images:</div>
<div><br>
</div>
<div><img alt=3D"image.png" width=3D"600" height=3D"161" style=3D"margin-ri=
ght: 25px;" src=3D"cid:ii_1959adacaa0cb971f161"><br>
</div>
<div><br>
</div>
<div>I have tried the following, after referencing this the known issues se=
ction in the USRP3 build instructions (<a href=3D"https://files.ettus.com/m=
anual/md_usrp3_build_instructions.html" target=3D"_blank">https://files.ett=
us.com/manual/md_usrp3_build_instructions.html</a>):
<br>
</div>
<div>
<ol>
<li>=C2=A0doing the suggested and making a non-functional source code chang=
e and recommitting the git
<br>
</li><li>deleting the .git directory in both the block directory and the uh=
d/ directory where the fpga build happens</li><li>changing the build seed i=
n uhd/fpga/usrp3/top/x300/Makefile</li><li>Running on a different machine, =
copying the block source code and using a different UHD git all together (p=
rivate rehost vs the github UHD). The vivado 2021.1 install is the same as =
its on a network file system</li></ol>
<div>These do not produce repeatable good results. Maybe once a week or onc=
e every two weeks one of these things will finish the build. This has been =
happening for about a month or two, and I don&#39;t know how else to troubl=
eshoot.
<br>
</div>
<div><br>
</div>
<div>Any advice? <br>
</div>
<div><br>
</div>
<div>Thanks,</div>
<div><br>
</div>
<div>David</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>

</div></blockquote></div>

--0000000000007502700630652af0--

--0000000000007502710630652af1
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_1959adacaa0cb971f161>
X-Attachment-Id: ii_1959adacaa0cb971f161

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
YII=
--0000000000007502710630652af1
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_m8ahnbqw3>
X-Attachment-Id: ii_m8ahnbqw3

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
--0000000000007502710630652af1--

--===============8649621666465670342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8649621666465670342==--
