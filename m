Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C499F12FCBB
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 19:50:00 +0100 (CET)
Received: from [::1] (port=50706 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inS1H-0001qB-EC; Fri, 03 Jan 2020 13:49:59 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:45814)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bpadalino@gmail.com>) id 1inS1D-0001iA-89
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 13:49:55 -0500
Received: by mail-oi1-f179.google.com with SMTP id n16so10743877oie.12
 for <usrp-users@lists.ettus.com>; Fri, 03 Jan 2020 10:49:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=90tkhNlaL/GbPTtVWqY8TYSWiO0VUszalHbct02Xc3U=;
 b=QiWymbDdjYI2Vt4rkB3oIgUmPRghUjMMbEVJN89DToxCW5vBEM2wuFZZAWDLSVefAA
 2MSMA4Dv+wqqM51l0pfH5G5zlH6ZjR3594h3PEW8+zBPfcebwd6VObHQcvuLtrwKIr2+
 eMjwtnDeWuPqlJc+5cz6bUhmxnFJOMX1cmIjBYanp/hID9TqjZkk3vY2FZhyra8IHqst
 FW6n+J5lOQRVvhrbTXQ9E49zJ/xJIMRNhIFrruNOkKR/E4Sqmn7O2g5kMeIf+x/DRNUK
 qAv9A2nk9FSOv4eQbAkH3rGLoIX8V5Ekk7aDMYU6RO61O7u25IqpFUFU5SGBLjQJeXzq
 ujFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=90tkhNlaL/GbPTtVWqY8TYSWiO0VUszalHbct02Xc3U=;
 b=fErPaa0VI1HClmrZ6vh7TBw6yr4Ur/3D/f2gpjznANg/Jn7SHztH6TiwYiGQeeDjmE
 nQKa161cjd+Og5QApEY9xVFxWFLTW2G+kVwUIfbrAEnzM5Q4EVrn/DL8fJ81upYDiYwv
 LbH/FpgnaRP7MK/QirLpGWk1p/hVvzJMbK0RQGJkSr45KzuP1jSw69hbom9X3B3iP4xk
 rpC81Ov0vIbFiGXNAGcEuZTRGebXA0+fjWFI0xp3RKdmYB9yOuOIbz0QUX47b7rAJjT+
 nqmLUIT1lCLr6l0P6CKEhiFt5lgDDhFBtE8j0/RkBORkMmQjeILLtOjGPTA9OeksNJ4n
 1DLw==
X-Gm-Message-State: APjAAAUX/YyMGssywspU3afHfpbE2sDijKfncXelXWp2MV3KDACZRqht
 vtquARlCHGXw88MtEseXYy0i16tK8tYvQv0FEdITUUr6
X-Google-Smtp-Source: APXvYqx7F8/+KHcm4oU9l5yW7Yxzl3mlh1lHIaJwT+nfZd1nd2Uk0tN4e4vwZdlqg5yhKWigQKj3xJAy1Te3u1lXv1I=
X-Received: by 2002:aca:d5d3:: with SMTP id m202mr4374070oig.161.1578077354475; 
 Fri, 03 Jan 2020 10:49:14 -0800 (PST)
MIME-Version: 1.0
References: <3f128547beb4452c88c27a70038afe5d@tudelft.nl>
 <CAEXYVK5k_9JsOfdD3fOd8yp+5rqMFPhCwyCKXiO6uAz980PjGA@mail.gmail.com>
 <64c3e7d188ca4d6c86cb70334f813570@tudelft.nl>
In-Reply-To: <64c3e7d188ca4d6c86cb70334f813570@tudelft.nl>
Date: Fri, 3 Jan 2020 13:49:02 -0500
Message-ID: <CAEXYVK5ozBqeRTMUR58jWdiuVyWx=MvBk6FQPySixOnWn7J5hA@mail.gmail.com>
To: Cherif Diouf <C.E.V.Diouf@tudelft.nl>
Subject: Re: [USRP-users] Building RFNoC image with default blocks fails,
 [DRC MDRV-1] Multiple Driver Nets: Net has multiple drivers
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0448347224330751716=="
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

--===============0448347224330751716==
Content-Type: multipart/alternative; boundary="0000000000002443ab059b40c4c5"

--0000000000002443ab059b40c4c5
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 3, 2020 at 1:41 PM Cherif Diouf <C.E.V.Diouf@tudelft.nl> wrote:

> I have this version UHD 3.15.0.git-84-g164d76dc
>
> but the lines are there whenever you use the  ./uhd_image_builder.py
> scripts.
>

Ah, I see it now:


https://github.com/EttusResearch/fpga/blob/fde2a94eb7231af859653db8caaf777ae2b66199/usrp3/tools/scripts/uhd_image_builder.py#L44

Someone at Ettus should probably stop assigning those clocks.

Brian

>

--0000000000002443ab059b40c4c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Jan 3, 2020 at 1:41 PM Cherif Diouf &=
lt;<a href=3D"mailto:C.E.V.Diouf@tudelft.nl">C.E.V.Diouf@tudelft.nl</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">



<div>

<div id=3D"gmail-m_9208784750716756174divtagdefaultwrapper" style=3D"font-s=
ize:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"=
ltr">
<p></p>
<div>I have this version UHD 3.15.0.git-84-g164d76dc</div>
<div><br>
</div>
<div>but the lines are there whenever you use the <span>=C2=A0./uhd_image_b=
uilder.py</span> scripts.</div></div></div></blockquote><div><br></div><div=
>Ah, I see it now:</div><div><br>=C2=A0=C2=A0<a href=3D"https://github.com/=
EttusResearch/fpga/blob/fde2a94eb7231af859653db8caaf777ae2b66199/usrp3/tool=
s/scripts/uhd_image_builder.py#L44">https://github.com/EttusResearch/fpga/b=
lob/fde2a94eb7231af859653db8caaf777ae2b66199/usrp3/tools/scripts/uhd_image_=
builder.py#L44</a></div><div><br>Someone at Ettus should probably stop assi=
gning those clocks.</div><div><br>Brian</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div><div><div dir=3D"ltr"><div class=3D"gmail_quote">
</div>
</div>
</div>
</div>

</blockquote></div></div>

--0000000000002443ab059b40c4c5--


--===============0448347224330751716==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0448347224330751716==--

