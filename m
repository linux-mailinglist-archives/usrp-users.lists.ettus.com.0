Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5814A72A8
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 15:05:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 685C83852B2
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 09:05:09 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oWhc2NMU";
	dkim-atps=neutral
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	by mm2.emwd.com (Postfix) with ESMTPS id D5F47384A00
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 09:04:03 -0500 (EST)
Received: by mail-ua1-f48.google.com with SMTP id 60so2232470uae.1
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 06:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=oxxXVwxTR93ifx+/AIpBroxsWPWtzHxE87V3xU3KvJE=;
        b=oWhc2NMUm+OzsuNy3Qtnz5COtoiD2feIMSHQSPwNqagY8S1eCc9o5PKnoqZqn6UvDA
         ENTD+7wSA5sgYWplX+1Ee/RuvwugooYMe35/ZhwNSbYLdRkMnC9vNsyuG7ZEH50Vgans
         DWobJaYswN0Qft5cSbuiV9nIAbRM4gb+hnYx2MA/JROXmmrLlch3JGv0hJeTn4FJu5SF
         RtbpdQWZHfVFumbe2L59rd/8IOwekG3ycxAqCIlhTYA/BGTuqppkV1Xn5WDMaBybLnCw
         LDfb/E1t+HCPHaB4R85knJTpVwAyoHQnZgEXRUdXNHkTWyGsxy2nOqHImEoZfjmVQexH
         CkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oxxXVwxTR93ifx+/AIpBroxsWPWtzHxE87V3xU3KvJE=;
        b=ohiHYRtGCO+u+BarzsjJoC2TZcARghSTMoh7kgAAQ/zqWhpRa9AdAYOf5gkM1vLUEt
         yAEO1Jy/ekDh4hXx1Zo2BAuyraWhEh0t/fGWRor3iT4+YsCoiFn4dAKQ3DPT9nKeC40a
         HPqAdxrTfFMMKcgagZE/gAf/TIPf5oM7z4mi7RBarUk+jGSq5U4dvr074Eixoqxx5tXq
         mMHL6HXbCDDPtszJe4JjjB5Gvst1fLJCNT5ux7iSYlH3rGR0rLWHlr4AFPXLLyeFArjf
         eni0OMUiIrpuHVbfyBaOl2K7iFB7ZGd6LGGVLSrXdn/QOnoC5tCskC4w7e0MMXOnfXqy
         lAHg==
X-Gm-Message-State: AOAM533e1yLQ0NrpQ1tvndpnzAY+H0562DTHYAPhvZ/tvXzZHWPy7Xf1
	u6+d+YKo0co8fitY6WrIKOgdmVNDVu5uI8hku7q1cEXeQHw=
X-Google-Smtp-Source: ABdhPJws/425GtjrgUQTGVC8L3m/rrEINYTalTk2NT0IkaXz2PMWH0pk4DOm0FTc1Z21AL+Mq6gglH7SKvkqDQIBtks=
X-Received: by 2002:a05:6102:10b:: with SMTP id z11mr5223709vsq.11.1643810642944;
 Wed, 02 Feb 2022 06:04:02 -0800 (PST)
MIME-Version: 1.0
From: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Date: Wed, 2 Feb 2022 11:03:52 -0300
Message-ID: <CAOucfAMvtY6fDqv8o+rnLRufEf3uXe57JSth_OKnDMJFOg5xpA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: F4N6WLH6CWG7XWIMFRFXRDKDLYSLX4RZ
X-Message-ID-Hash: F4N6WLH6CWG7XWIMFRFXRDKDLYSLX4RZ
X-MailFrom: lorenzen.lautaro@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Creating RFNoC block with VHDL
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F4N6WLH6CWG7XWIMFRFXRDKDLYSLX4RZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0195307282881348269=="

--===============0195307282881348269==
Content-Type: multipart/alternative; boundary="00000000000073687605d7097dd2"

--00000000000073687605d7097dd2
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm starting my journey on the development of RFNoC blocks. I've always
programmed in VHDL, and although on the application notes any HDL is
supposedly usable, I can't figure out what the correct way of making the
block in VHDL is.

With rfnocmodtool the structure that outputs is in verilog, and the same
that happens with rfnoc_create_verilog.py. I just want to write the top
module aka the functionality in VHDL, is that possible? How would that be?
Are there any examples?


Thanks in advance,
Regards.
Lautaro.

--00000000000073687605d7097dd2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi everyone,</div><div class=3D"gmail_default" style=3D=
"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:arial,helvetica,sans-serif">I&#39;m starting my j=
ourney on the development of RFNoC blocks. I&#39;ve always programmed in VH=
DL, and although on the application notes any HDL is supposedly usable, I c=
an&#39;t figure out what the correct way of making the block in VHDL is. <b=
r></div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,s=
ans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:aria=
l,helvetica,sans-serif">With rfnocmodtool the structure that outputs is in =
verilog, and the same that happens with rfnoc_create_verilog.py. I just wan=
t to write the top module aka the functionality in VHDL, is that possible? =
How would that be? Are there any examples?<br></div><div class=3D"gmail_def=
ault" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-s=
erif">Thanks in advance,</div><div class=3D"gmail_default" style=3D"font-fa=
mily:arial,helvetica,sans-serif">Regards.</div><div class=3D"gmail_default"=
 style=3D"font-family:arial,helvetica,sans-serif">Lautaro.<br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br>=
</div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,san=
s-serif"><br></div></div>

--00000000000073687605d7097dd2--

--===============0195307282881348269==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0195307282881348269==--
