Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA4F4B26F3
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 14:17:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39FAA385072
	for <lists+usrp-users@lfdr.de>; Fri, 11 Feb 2022 08:17:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CY4RCozS";
	dkim-atps=neutral
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 7198238494D
	for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 08:16:54 -0500 (EST)
Received: by mail-vk1-f177.google.com with SMTP id k128so4932049vkk.10
        for <usrp-users@lists.ettus.com>; Fri, 11 Feb 2022 05:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=dW8anR3etzsVBWmfXZ8SzGO/mHS7NQ20DfY04MudAdI=;
        b=CY4RCozSTcFkr9+wWPQOa5w+g4SrMK42Pl1Z2BhgOxyPpKf2hnzqLpaXYt8XROyziN
         +K8sd2b6jf0ZmAK1fMYhumsQ6jn6Mvh3gE0FKUwbkr9F0C8OP9F6COK6of1W88dflpIH
         /gJKzSQ8ZdWzgJpkan+9jTaGWl9KW6uDEugP3S3/847Cg+qyq00ePB2X1fzvvacWgcoQ
         cUmDzqaoM0A4V3HJ5Moam/oL6Gc+gAdbK9EdpKIFfLCDINa5/5KgM+U25Pls2Cblaefn
         l8mCHQBRP+IcCZU/AyhpZYVm13WmUBWSvXkOkW0T+jQqk0jqvLk2aDN+fFSdV3+x7L7Q
         dhdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=dW8anR3etzsVBWmfXZ8SzGO/mHS7NQ20DfY04MudAdI=;
        b=iY+eSCM0H8uHTe3jbixXaXZpLLtaltT/58S2Uf56sGNl1/Da9NMkxNg6IpShx+REL0
         I/KbBN0gHBrS1PRiDgBvz1iqJibNgz0F54u1lKRyQzB148AEUAEYf0VhYvLFKVbE6r8F
         9yg9G36tV+PZ/PjF/IrUfAuTFN1qulspXU5tV5g1g0I4Olp9306a2Ogg0Zj4KhYrsc/4
         SvUSQTtsm9w4LXN3sswBDbhNLnL6UrnW9GIUpbOTZLcLjA4PHkkiTG1cK+kHenfB/aoj
         4mRpse1vD67DHiT/F5vIq2qrm7uKuAxUaev+5iIfwEVIYJASyVKtGh/XnbP4nN6Ofrbf
         LckQ==
X-Gm-Message-State: AOAM5306+/Oc5izh4b3SB4WK0iUJAyRiQdNdp5+k+OXVWSklIeS0Dsu3
	+3u3mQXHb1IkzN3b2KePNiYv+cvU2S7Ax78LcKTmPsGGbWQ=
X-Google-Smtp-Source: ABdhPJyVK1XljltyHgqqEvRfnRrkpVsXlA1/cD8i0U4rm7arM97mMeVWN5vxl5JA2M0acL5rFf0qFxioRI3LcKe/mTY=
X-Received: by 2002:ac5:c944:: with SMTP id s4mr431257vkm.2.1644585413720;
 Fri, 11 Feb 2022 05:16:53 -0800 (PST)
MIME-Version: 1.0
From: Lautaro Lorenzen <lorenzen.lautaro@gmail.com>
Date: Fri, 11 Feb 2022 10:16:43 -0300
Message-ID: <CAOucfAPKzeN=Ei1g6J4fOL+KcWff8e99afBHUG5w7kZx5xnpQA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: WY3D6IRXKVZQKHWESWPEVSHZXGPTXJRI
X-Message-ID-Hash: WY3D6IRXKVZQKHWESWPEVSHZXGPTXJRI
X-MailFrom: lorenzen.lautaro@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Could not find block with Noc-ID ...
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WY3D6IRXKVZQKHWESWPEVSHZXGPTXJRI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2379753316947005369=="

--===============2379753316947005369==
Content-Type: multipart/alternative; boundary="000000000000633f7005d7bde1d4"

--000000000000633f7005d7bde1d4
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm trying to follow the RFNoC 4 workshop and I've come up with an error
when I'm trying to load the image to an ettus 312. I think my environment
is set up correctly but any help would be appreciated.
It is worth noting that I'm trying to use RFNoC with gnu-radio.
I've also seen an email from 2020 but I'm not sure how I could put my
custom block "in-tree" to solve this issue.

The error:
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID
0x501de012, 0xffff

The setup:
I'm using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5.

Thanks in advance,
Lautaro.

--000000000000633f7005d7bde1d4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi everyone,</div><div class=3D"gmail_default" style=3D=
"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:arial,helvetica,sans-serif">I&#39;m trying to fol=
low the RFNoC 4 workshop and I&#39;ve come up with an error when I&#39;m tr=
ying to load the image to an ettus 312. I think my environment is set up co=
rrectly but any help would be appreciated. <br></div><div class=3D"gmail_de=
fault" style=3D"font-family:arial,helvetica,sans-serif">It is worth noting =
that I&#39;m trying to use RFNoC with gnu-radio.</div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif">I&#39;ve also seen=
 an email from 2020 but I&#39;m not sure how I could put my custom block &q=
uot;in-tree&quot; to solve this issue.<br></div><div class=3D"gmail_default=
" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"=
gmail_default" style=3D"font-family:arial,helvetica,sans-serif">The error:<=
/div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans=
-serif">[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0=
x501de012, 0xffff</div><div class=3D"gmail_default" style=3D"font-family:ar=
ial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:arial,helvetica,sans-serif">The setup:</div><div class=3D"gmail_=
default" style=3D"font-family:arial,helvetica,sans-serif">I&#39;m using an =
E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5. <br></div><div class=3D"gmail_=
default" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Than=
ks in advance,</div><div class=3D"gmail_default" style=3D"font-family:arial=
,helvetica,sans-serif">Lautaro.<br></div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif"><br></div></div>

--000000000000633f7005d7bde1d4--

--===============2379753316947005369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2379753316947005369==--
