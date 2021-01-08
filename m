Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9EB2EF3CA
	for <lists+usrp-users@lfdr.de>; Fri,  8 Jan 2021 15:15:13 +0100 (CET)
Received: from [::1] (port=53292 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kxsXl-0000j0-Ea; Fri, 08 Jan 2021 09:15:09 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:35781)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kxsXi-0000fF-38
 for usrp-users@lists.ettus.com; Fri, 08 Jan 2021 09:15:06 -0500
Received: by mail-ot1-f48.google.com with SMTP id i6so9774812otr.2
 for <usrp-users@lists.ettus.com>; Fri, 08 Jan 2021 06:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9GR9SapzK3W9EQu5UpnD9vPk1HGBwfkX7ayIScOzMhI=;
 b=F1uW4KlPKq5FDWIgI4Sisjzsc1j/DsbWw3mZMpwfgLDShIjMq8aeBnd9DfXjSs8t3g
 qRRU7cvb/qHybyWX1shZshelJsLd3XJk9DmBX3h9pzJWrcxhVKCQch1hYk34rcKR3E0I
 nZvTIgziy3bIgjbtr1oxd29+u0wt0bkSq8Nphb9MJPFGitJnbmuk49J+5AhhdkhmWv9l
 iZZsnqfk+HDDjthOd5XcYm+2Szgq2yTEHhfaQJnolyncDjXi0Sf2P3u0bxEkld35iD/M
 ZfNqZr724NKkC8+WWJA1jiJ7CGzyKtVEWhNGciJc1WiR9NDSmwVL8/iNCcOMDdKxW0BL
 VKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9GR9SapzK3W9EQu5UpnD9vPk1HGBwfkX7ayIScOzMhI=;
 b=HIf6FIGqPOQHbyu746nJE3BKaxE68nkevxT4IBSJ4gR/vVJ4Qcnjc4nAJDGDQfawkv
 i7Rmyy0K4Lrrb3K6v3wJGzNVmjWaH0BwEvZGjdSpTBmoPBZow/zKx5aw6I0iOJqLAwI0
 DfspmNcu+OTWaYccYnQkAjEBbw+jkESOkwS4bCW8i/qdUASh9sVs3SSYmYDANgde4pbf
 6qcUe64y2GCrxmlQiV1KRQrJeMyGDn8W9v8qTn1L2uTeZtX8uaSEmBNtFr7UoVeyfbHf
 VeykPX+O78u5Y7gnuxzgnG49qO7lF4ZrA7zEipYZmGpSVeQOutR223GE5C/j09ryM++F
 TFDg==
X-Gm-Message-State: AOAM5320a+nuEbIarYiZV7/Q+Tte7Aw8RJ+YAAvW79o6Pw4al4PZb2Dc
 Nk7JuZy5RwCSKY7Q8QPFiOnXI1hCbLsd95VeYYL34Q==
X-Google-Smtp-Source: ABdhPJzNk65dcIMBMqpqNAICzmaIyVWjEogSLOo5Wfmwjzdb22oAuaTN1YpQzfFyMX3deyUJF43hWkSRUR+8bxcEsS8=
X-Received: by 2002:a9d:6a97:: with SMTP id l23mr2694379otq.58.1610115265073; 
 Fri, 08 Jan 2021 06:14:25 -0800 (PST)
MIME-Version: 1.0
References: <CAAM_mTSojJ9OCdMqLqp+q_wp5Dy7J+b4hK59aj=ct=63cP0hmQ@mail.gmail.com>
In-Reply-To: <CAAM_mTSojJ9OCdMqLqp+q_wp5Dy7J+b4hK59aj=ct=63cP0hmQ@mail.gmail.com>
Date: Fri, 8 Jan 2021 09:14:14 -0500
Message-ID: <CAB__hTSQ+eD+kggCCbXQSpreQN51QX5vSbViXCtwDKPHCD7nOQ@mail.gmail.com>
To: Heng Zhang <zh.heng96@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP N310 cannot start after reboot when updating
 the Linux File System
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8069537972561172643=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============8069537972561172643==
Content-Type: multipart/alternative; boundary="0000000000006c5e0705b8642cc0"

--0000000000006c5e0705b8642cc0
Content-Type: text/plain; charset="UTF-8"

Perhaps you can write the SD card directly as described here
<https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card>.
I suggest using bmaptool.
Rob

On Fri, Jan 8, 2021 at 1:24 AM Heng Zhang via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Dear community,
> I try to update the Linux File System of USRP N310 with mender following
> http://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide.
> Everything seems ok when updating the file system with "mender -rootfs
> /home/root/usrp_n3xx_fs.mender".
> However, I reboot the USRP after mender command was successful and I found
> the USRP cannot start. After a few hours, I try to manually start it and
> also failed. Does anyone know why the problem happens?  I wondered if there
> was something wrong with my USRP. Is there any place to provide testing and
> repair services? I am in Shanghai, China.
>
>
>
> Regards,
> Heng
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006c5e0705b8642cc0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Perhaps you can write the SD card directly as described <a=
 href=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_=
SD_Card">here</a>.=C2=A0 I suggest using bmaptool.<div>Rob</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan=
 8, 2021 at 1:24 AM Heng Zhang via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Dear commun=
ity,<div>I try to update the Linux File System of USRP N310 with mender fol=
lowing <a href=3D"http://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Star=
ted_Guide" target=3D"_blank">http://kb.ettus.com/USRP_N300/N310/N320/N321_G=
etting_Started_Guide</a>.=C2=A0 Everything seems ok when updating the file =
system with &quot;mender -rootfs /home/root/usrp_n3xx_fs.mender&quot;.=C2=
=A0=C2=A0</div><div>However, I reboot the USRP after mender command was suc=
cessful and I found the USRP cannot start. After a few hours, I try to manu=
ally start it and also failed. Does anyone know why the problem happens?=C2=
=A0=C2=A0I wondered if there was something wrong with my USRP.=C2=A0Is ther=
e any place to provide testing and repair services? I am in Shanghai, China=
.</div><div><br></div><div><br></div><div><br></div><div>Regards,</div><div=
>Heng</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006c5e0705b8642cc0--


--===============8069537972561172643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8069537972561172643==--

