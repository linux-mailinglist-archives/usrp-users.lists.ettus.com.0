Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 840914622AE
	for <lists+usrp-users@lfdr.de>; Mon, 29 Nov 2021 21:58:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 899D3384E90
	for <lists+usrp-users@lfdr.de>; Mon, 29 Nov 2021 15:58:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="hmOLY1vf";
	dkim-atps=neutral
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 6BEA0384843
	for <usrp-users@lists.ettus.com>; Mon, 29 Nov 2021 15:58:03 -0500 (EST)
Received: by mail-yb1-f171.google.com with SMTP id q74so46015456ybq.11
        for <usrp-users@lists.ettus.com>; Mon, 29 Nov 2021 12:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yTqPvP7oyuC1HCz+dYKatF82SODT7e1o4V+wsKqp4Oo=;
        b=hmOLY1vfK0mON7F6JKIOW++9gCLz9q7yIV3Im/KVsdf+r91z7ufkbsueAxe6QqtJKq
         KmzbFWNQDtyQ9NqnAmRJCTWi523H/F9ze0721znYAW/ZnGI1rgcJu0zDxz4FAnWNBHRE
         s3kwCAYuHDkvnEdJNAdL6ibH6qfJFYBKyq7x2aQtTa9fCS2T/JMzcmOUB6rR89EiGohM
         yjpWIRiDHMYTmnKgAy8gHRetnzqWw1jce2s/wCCLjbD2mFBGwo6F0RVCkx82gCBI9WG0
         KKoCkOTodCJUqeYDTHtRsmR4dJszLmhky0DIsuQmInL3JV3WzF2ttFed7E2SVgSM8Xpm
         +TaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yTqPvP7oyuC1HCz+dYKatF82SODT7e1o4V+wsKqp4Oo=;
        b=aTJwedzv0mPg9wuUfW+FoelZ4wLqfCNyDYgGKBBkxmL2wY8OiPmgqYDkDBiheeqosA
         4FFcT9cGkdDB9+XIbC+4YxXlmu7VnsgORxkcGGIKWIzXx87IbqD/SIJTkTSbEpaAKq0m
         OfWw9oDNpkbhQyV7dPvQ+qed12xt4dXHA0rMHBDoK6XcMcM+LaaOB4XvHIfPNyjHbUUM
         JNqgHI+WGjPkdvTpWkK6tfCd4FuMO3plpHm2p+p4sv+9KhRit1eQPIBkEcTmAUax/cEM
         QarfIqxtLZQhQAZ4J4kmxaKpDhD6ia89Mr3Zp4ZhUu1jhUtoAJ2l5QDyTqvqfZM9mAjG
         T0MQ==
X-Gm-Message-State: AOAM533O5Wz3tFZf+JmtP9mxCKYqKOadz6+I1mDDh7yK2k+5srhqcdDW
	kOtozssboqY0C5wv9CEqpi9ceomrcIymdGRHHI4w1vPM0IE=
X-Google-Smtp-Source: ABdhPJy2Usmlmx1sbdDqKJGZ4omlwcPQPZxg2O9zStq/HG0GhvQFKdWEtnen4Izf+9bU0C0Loo06BFCmdMk1A5kNNCo=
X-Received: by 2002:a05:6902:4ec:: with SMTP id w12mr37566815ybs.298.1638219482534;
 Mon, 29 Nov 2021 12:58:02 -0800 (PST)
MIME-Version: 1.0
References: <GcHcX3f0MTKeCm5bTF7GTY7aXQG6FqzKDK9hWw17s@lists.ettus.com>
In-Reply-To: <GcHcX3f0MTKeCm5bTF7GTY7aXQG6FqzKDK9hWw17s@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 29 Nov 2021 15:57:51 -0500
Message-ID: <CAB__hTRgrR7n1Ek7Y9aVwE-TCo=WkAe91fQwbZ7qx1hum+EFrQ@mail.gmail.com>
To: iw1fnw@gmail.com
Message-ID-Hash: XE4DG4R6SSVU35IUVO6SBR2OZEXBYVRX
X-Message-ID-Hash: XE4DG4R6SSVU35IUVO6SBR2OZEXBYVRX
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RuntimeError: Device reported an error during initialization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XE4DG4R6SSVU35IUVO6SBR2OZEXBYVRX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6643965308826565699=="

--===============6643965308826565699==
Content-Type: multipart/alternative; boundary="0000000000005251b405d1f3b2da"

--0000000000005251b405d1f3b2da
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Perhaps you could provide the terminal log for the commands
"uhd_usrp_probe" and "uhd_image_loader" (including the commands themselves
so we can see the exact command line arguments).
Rob

On Mon, Nov 29, 2021 at 2:13 PM <iw1fnw@gmail.com> wrote:

> That is what I did (with the help of a colleague). It all went fine till
> almost the end. I managed to get the x310 working (e.g. answering to the
> uhd_usrp_probe command) after programming with Vivado.
>
> But when I try the uhd_image_loader command at the end, I get the error
> above (exactly in the same way as explained by Julian in his first post).
>
> So, I am now stuck with the x310 working but just if I do not switch it
> off, since the image in ROM is somewhat corrupted.
>
> I=E2=80=99m not sure if the connection is not reliable. The x310 is direc=
tly
> connected to the PC via two 10G SFP+ cables. Is there a way to test this?=
 I
> think there is another x310 in the lab, which I could use to test, but I =
do
> not want to mess up also that one, since it is not mine.
>
> Al
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005251b405d1f3b2da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Perhaps you could provide the terminal log for the command=
s &quot;uhd_usrp_probe&quot; and &quot;uhd_image_loader&quot; (including th=
e commands themselves so we can see the exact command line arguments).<div>=
Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, Nov 29, 2021 at 2:13 PM &lt;<a href=3D"mailto:iw1fnw@gmail=
.com">iw1fnw@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><p>That is what I did (with the help of a colleague).=
 It all went fine till almost the end. I managed to get the x310 working (e=
.g. answering to the uhd_usrp_probe command) after programming with Vivado.=
</p><p>But when I try the uhd_image_loader command at the end, I get the er=
ror above (exactly in the same way as explained by Julian in his first post=
).</p><p>So, I am now stuck with the x310 working but just if I do not swit=
ch it off, since the image in ROM is somewhat corrupted.</p><p>I=E2=80=99m =
not sure if the connection is not reliable. The x310 is directly connected =
to the PC via two 10G SFP+ cables. Is there a way to test this? I think the=
re is another x310 in the lab, which I could use to test, but I do not want=
 to mess up also that one, since it is not mine.</p><p>Al</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005251b405d1f3b2da--

--===============6643965308826565699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6643965308826565699==--
