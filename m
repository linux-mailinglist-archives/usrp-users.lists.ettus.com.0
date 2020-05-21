Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DE21DD606
	for <lists+usrp-users@lfdr.de>; Thu, 21 May 2020 20:34:05 +0200 (CEST)
Received: from [::1] (port=33680 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jbq16-0007CP-Hl; Thu, 21 May 2020 14:34:04 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:41936)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jbq12-0006xb-Tw
 for usrp-users@lists.ettus.com; Thu, 21 May 2020 14:34:00 -0400
Received: by mail-oi1-f175.google.com with SMTP id 23so5835250oiq.8
 for <usrp-users@lists.ettus.com>; Thu, 21 May 2020 11:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FIfJ6Ka9svV6zqeG+WH4D2IXkcdRpkLAKNLmBcop5Pw=;
 b=Sqj0FHkBlzH/RZw0KtCuHXYn9lLE73Om5o4PkC9ZarrEULTSHRcOmoVUMzrQM5RzTf
 MOZmE4me4Lpg2Mg11+TnilNDG4uHgSlY+JTOZvfCY8y8E+dIs/MFKFjUTGI5u4CxGUC7
 RpwJicGZcqhdVMMq1Eh3/z6xR8T5Jerpvnrrh7LgZAXvw3hyYmoLO75/IvVaWqAbUl5z
 lUf9vsqcAOCdNEE3c7WnF5LLz2jOmWi96p2ek5QJq+4I7tmCCA5oWgVm8C+J3y2Tkx3K
 ICUPfj+9h9ZEq1qT7N/FpZtis7MZ3eeXk5PKqMZyJ9HD6JduSgytBNX4aVBMBSFILtEr
 j0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FIfJ6Ka9svV6zqeG+WH4D2IXkcdRpkLAKNLmBcop5Pw=;
 b=qSaEqUai9mim61G1SECAbGoN78DI731/qarJXaFtEMP7Fb+koheeMOhpFvFh5Emm54
 c3b8/Ra1oDtdyHuKO14ZM3ln7nfMaVx3YwwT+I4ppZHMxkk+gvAb80JiwoyjT92fgRdO
 iiL8472Au2QRvz9NXoBDpZ+f0usQlN8CNFZ8jZ2koaY3p+P3/fvs2W3O9D4QuVtWn84Y
 SPA/8WwTylfhdJt79X5fF5fCpD8OiO74qlxrWCN2JOIR7TevQ15ljJcra95RVBFzqNro
 z6un2nGLrYYSh0zdDgseRb5U3AjYzQjpOC0wt4i+f1RGKPC1BpPsicUT/KFjgLYFyZpL
 TwpQ==
X-Gm-Message-State: AOAM532WmsCtMyOZUFJF7YC+HyK4OXoovAwoIkW+4yK0wdyp8i/WE1p5
 1OZ2VIAgIXgltsB3RJzCvtlbjsIulp8jVEuAwHw=
X-Google-Smtp-Source: ABdhPJwdVp7tKwCAUIIhaL2UrX6Aros9KxKPQmpr2nwq49f/Kyd5iyAm0SzSSCQoojEymjp93gPzyMsfk1soFyxijZ0=
X-Received: by 2002:aca:cd93:: with SMTP id d141mr7335411oig.148.1590085999929; 
 Thu, 21 May 2020 11:33:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPhuOxNCAMULg=PFJBoGTP+2zAtd0YSMdGP-zH6Jse_D5w@mail.gmail.com>
 <CAEXYVK6W5UNvNUFuGaMU0iEWBkpPH8njt-FFkUdGLmqcwkER1g@mail.gmail.com>
 <CAP2eGPjoT8ocBao=jW_Z=JRb6OLhx1cC_-J7nRANXCvwNNU7rA@mail.gmail.com>
In-Reply-To: <CAP2eGPjoT8ocBao=jW_Z=JRb6OLhx1cC_-J7nRANXCvwNNU7rA@mail.gmail.com>
Date: Thu, 21 May 2020 14:33:08 -0400
Message-ID: <CAEXYVK5wDuzhrWdOyN5JtnU26L6-PnhLE6dtr+vDdkQR+R8auw@mail.gmail.com>
To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Subject: Re: [USRP-users] Multiple DMA_FIFO blocks
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7633777623604588351=="
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

--===============7633777623604588351==
Content-Type: multipart/alternative; boundary="0000000000003037ce05a62cbf3f"

--0000000000003037ce05a62cbf3f
Content-Type: text/plain; charset="UTF-8"

On Thu, May 21, 2020 at 2:25 PM Carlos Alberto Ruiz Naranjo <
carlosruiznaranjo@gmail.com> wrote:

> Thank you for the response Brian :)
>
> The throughput is about 11MSamples.
> What about to use the AXI_FIFO_LOOPBACK?
>

No idea about that.  Someone else will have to weigh in.

Good luck!

Brian

>

--0000000000003037ce05a62cbf3f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 21, 2020 at 2:25 PM Carlos Al=
berto Ruiz Naranjo &lt;<a href=3D"mailto:carlosruiznaranjo@gmail.com">carlo=
sruiznaranjo@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Than=
k you for the response Brian :)<br></div><div><br></div><div>The throughput=
 is about 11MSamples.</div><div>What about to use the <span lang=3D"en"><sp=
an title=3D""><span lang=3D"en"><span title=3D"">AXI_FIFO_LOOPBACK?</span><=
/span></span></span></div></div></blockquote><div><br></div><div>No idea ab=
out that.=C2=A0 Someone else will have to weigh in.</div><div><br></div><di=
v>Good luck!</div><div><br></div><div>Brian</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--0000000000003037ce05a62cbf3f--


--===============7633777623604588351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7633777623604588351==--

