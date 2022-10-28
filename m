Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C800B611425
	for <lists+usrp-users@lfdr.de>; Fri, 28 Oct 2022 16:11:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0229380EC2
	for <lists+usrp-users@lfdr.de>; Fri, 28 Oct 2022 10:11:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666966297; bh=aU6AHMxW5yM23BscNQXUQrdFRM+EMEnVm+M2KyQOqZQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0u3ZdHODhJcOS+YfzZdPIxIw1BUVVoxkL2aJ7tAhltQBlR5a0m8A7clGYqUv8Bu3p
	 Iu7dnq4pLXVAE5HD3poe59hWYOMXuO/uPqT/E2HupQjLSnShVph3cNbFXCKCjtkhby
	 0TvYQ72XVF91GUXySQ6HksVMa9Q+ezbQ9OYqZbPGACgtrLPt6WaRVTex9gq0bdziNR
	 ki6wLMWdbgAjEk+6C2rm+u23tOazi78t4AvW3CIf539gzRsypRUJSwd75ljuWBdBeE
	 RjFCPJ58jT8iMHz5s7gIVWe1daAikG4qY8yFFaHpeU80qwBoouf8oKM2heTZz4Z9Aj
	 TL2gqTCh/aZpg==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 733FF3809F6
	for <usrp-users@lists.ettus.com>; Fri, 28 Oct 2022 10:10:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="7tGUHc4+";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id k2so13262555ejr.2
        for <usrp-users@lists.ettus.com>; Fri, 28 Oct 2022 07:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rdepkgV+qMffrHE/5qurohYZBnMQVNVgr4OnNGPDPz8=;
        b=7tGUHc4+V2fZnPGp3ymXoGA2C7ZEhVetZV5WY82ae6k5gwjYJ5K5R3dtrPexf2aL8h
         EYlTnPbtla9EktxLgN81Axw8TBNDShrqdjgHvtGUMWLAP9IE6TdEMLuNHAz43X8i/fCT
         1hJx1pmWAD6331p+Ls88ATNIZ91T0z1gH4z2226ov+g2kxHS57VnVcTcEdjSEEuatnGI
         mQ2fClLGrgMmXmJ2zpRiWSLleYtCwer1HbtzlnPGRa5AYRVwiTiVDxnH+/dUo7F8rcAR
         xx4lvkKP52X6bzBdgfKRLz08I8XuQdu97VZ3R406m6by6hXQrSQ95Cs4QDhkNm6d7ysh
         vJTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rdepkgV+qMffrHE/5qurohYZBnMQVNVgr4OnNGPDPz8=;
        b=o5+gZ5OFiMxqyIDXYhctWQK0KY+3uECzf0LYBy+ww4AJdqSShKhE+KbMjWo/r5PX6s
         3FIitRkadWmu4jV9iVN8vjsRUiMsTpZIA/1i/P3cKu1q9ya3K3XODwB8m5/ZNe9arwTq
         GJWCZ9stLIoCRr01Cna1NlqtvPPMsP8IASkuFRl5+jgPUrj8F16E47O+sxML0ZvIEdzo
         sP+dqlP+nY/eSodXOlFQo3JRnqpxpP3kLNzCYLbJEuP6ABGJAh2EZbmf21WSTOrb0D7A
         vTa3ui1uOL+NzC/DZK9KmsSyBF6LZ0weW0rHSnQhOCGBPi4unriuNbmgeNOMt39Liwf+
         s2Fg==
X-Gm-Message-State: ACrzQf0EzGxGSAArpRA+CTQi8rrFd+GHdpEom/eOn0ZUUPJ7GvfOtdXm
	Al+9eu8IhxU/aW84zXK4nC3fY0KJfGiwtv3TuWKjmXeOrjdcVQuT
X-Google-Smtp-Source: AMsMyM5TtSbIvSwsoPNX/j1mLhoGtprLQckwZ7oIT9j+6+9CLwAOPgf/Bjii4XPwE96IwP7SrYvJLu3dLWv50z5hLq0=
X-Received: by 2002:a17:907:1c10:b0:791:a716:5089 with SMTP id
 nc16-20020a1709071c1000b00791a7165089mr44021797ejc.672.1666966226411; Fri, 28
 Oct 2022 07:10:26 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR14MB4192D5D8287383AEE1985AE7CD339@MN2PR14MB4192.namprd14.prod.outlook.com>
In-Reply-To: <MN2PR14MB4192D5D8287383AEE1985AE7CD339@MN2PR14MB4192.namprd14.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 28 Oct 2022 09:10:09 -0500
Message-ID: <CAFche=gDu0ZGDGkOJ0AeF6FetuXK2=d-yY3NpMUyrpSkEFjjTw@mail.gmail.com>
To: Xingjian Chen <xingjian@umass.edu>
Message-ID-Hash: X36UUEWIOERQTFHF6GV6XOX6YKKE45P3
X-Message-ID-Hash: X36UUEWIOERQTFHF6GV6XOX6YKKE45P3
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Simulation for RFNoC block input signal
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/X36UUEWIOERQTFHF6GV6XOX6YKKE45P3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9037366407619126447=="

--===============9037366407619126447==
Content-Type: multipart/alternative; boundary="000000000000c73c5b05ec18d169"

--000000000000c73c5b05ec18d169
Content-Type: text/plain; charset="UTF-8"

Yes. Take a look at the gain OOT RFNoC block example:
https://github.com/EttusResearch/uhddev/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain_tb.sv

For example, here it generates test input data:
https://github.com/EttusResearch/uhddev/blob/1be0f33bf32fd319facc654cb515449d968ea05f/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain_tb.sv#L258

This is then sent using send_items() and the block's output is received
using recv_items().

Most of the RFNoC blocks have examples of doing something like this.

Wade

On Wed, Oct 26, 2022 at 9:41 PM Xingjian Chen <xingjian@umass.edu> wrote:

> Hi there,
> I am creating an OOT RFNoC block that does pulse average for X310. In a
> simulation, can you generate and manipulate input payload stream data?
> Could anyone point a direction about which file can feed the RFNoC
> simulation a customized waveform? Thank you.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c73c5b05ec18d169
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes. Take a look at the gain OOT RFNoC block example:=
</div><div><a href=3D"https://github.com/EttusResearch/uhddev/blob/master/h=
ost/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain_tb.sv">ht=
tps://github.com/EttusResearch/uhddev/blob/master/host/examples/rfnoc-examp=
le/fpga/rfnoc_block_gain/rfnoc_block_gain_tb.sv</a></div><div><br></div><di=
v>For example, here it generates test input data:</div><div><a href=3D"http=
s://github.com/EttusResearch/uhddev/blob/1be0f33bf32fd319facc654cb515449d96=
8ea05f/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain_t=
b.sv#L258">https://github.com/EttusResearch/uhddev/blob/1be0f33bf32fd319fac=
c654cb515449d968ea05f/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfn=
oc_block_gain_tb.sv#L258</a></div><div><br></div><div>This is then sent usi=
ng send_items() and the block&#39;s output is received using recv_items().<=
/div><div><br></div><div>Most of the RFNoC blocks have examples of doing so=
mething like this.<br></div><div><br></div><div>Wade<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oct 2=
6, 2022 at 9:41 PM Xingjian Chen &lt;<a href=3D"mailto:xingjian@umass.edu">=
xingjian@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div class=3D"msg6211044304879847420">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hi there,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I am creating an OOT RFNoC block that does pulse average for X310. I<span s=
tyle=3D"background-color:rgb(255,255,255);display:inline">n a simulation,</=
span>=C2=A0can you generate and manipulate input payload stream data? Could=
 anyone
 point a direction about which file can feed the RFNoC simulation a customi=
zed waveform? Thank you.</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000c73c5b05ec18d169--

--===============9037366407619126447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9037366407619126447==--
