Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 645FF9B631
	for <lists+usrp-users@lfdr.de>; Fri, 23 Aug 2019 20:31:41 +0200 (CEST)
Received: from [::1] (port=45080 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i1ELa-0006W8-MN; Fri, 23 Aug 2019 14:31:38 -0400
Received: from mail-lj1-f179.google.com ([209.85.208.179]:42786)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1i1ELW-0006QB-SV
 for usrp-users@lists.ettus.com; Fri, 23 Aug 2019 14:31:35 -0400
Received: by mail-lj1-f179.google.com with SMTP id l14so9714724ljj.9
 for <usrp-users@lists.ettus.com>; Fri, 23 Aug 2019 11:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PwWoG+jw8G0UaTxQiEGxY1eLlJm6JXb66lRArUTcN2Q=;
 b=DbTs0csNjHR7ZeYYBY4gXxGsRefwQdjvSh8JNnWxXAietCR0CjGITfV25DunvaeRjS
 bIMyN5kk1mkHRJxb3GZBbHgtP0Hpt8J0kO43aKQdl1VuemzQCNSJd5eJQxLsJN+j8R5X
 Hl0kIHIAYPqhaTwiIGwq+PKewLApI2j7NGruBZnQPlnyFpMvtedJNX9ZjMZexygfiFHf
 tZi4DR0Z5kfoynwMOq1USZebqDH8dFTJrJuI894so1sTWaLr0tlUofsbE81PQlEJ1cnl
 cnZSeWPGxzDAYgNSZhi0jwks/x7vkva2x5Z6mVYCOJ9u8XnQxS6NRx+8QAiRNDRZD1cF
 hcbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PwWoG+jw8G0UaTxQiEGxY1eLlJm6JXb66lRArUTcN2Q=;
 b=SojGfBbS4/gDCt2A0rVfbo8gF0spmT+2wJ4DKuu1/jwIvdNQDUEA6lp3RtwN/5LV+S
 uJiUWb7naGkb7jXOmVIO+obIldC0xgtiztWPfrzwxEehIA8weZNnwroLWtJ+H4mYe6gW
 IXmPR96QaZC9k6VWxqN8vH4891Yx/u2WZr2YkUHRvPIs7AjvlXpG8tfE6+wqbbp0SAlX
 BmGCQG/92bpu5xLLQVqNhuXtW50jjf8dRjC2ectPyARAnbpxPjQW3QhVg3Kx/TYMqdtz
 v7/y0dRyubtcW/URe7HHE+VcZdD2YPgr32I7fe1yizbB38pmnY94oEBlvoso432tNcuT
 gxPA==
X-Gm-Message-State: APjAAAV7S+XGE8cpVaqQgJ96r57uhQqCTu6qpAoOk4iL7qQzy9fg3NPu
 UKGsU8cuDdE+rZ9/azprUrmedNQpKVDwdkIbiMKG/346
X-Google-Smtp-Source: APXvYqyXWNkVVJJGIQr1qXLe7KQ3ZsuDmtD7eJ29p+EdYl2fMdcbvq/WZM1ULnffppCoLN+8Z5GpTuRrJeEvF3CGu1w=
X-Received: by 2002:a05:651c:1b8:: with SMTP id
 c24mr3868898ljn.2.1566585053452; 
 Fri, 23 Aug 2019 11:30:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAC=seqwUvqr_psTTg0NyDK0oF7UrLAhBMkSX4ToExAOP4hdawg@mail.gmail.com>
In-Reply-To: <CAC=seqwUvqr_psTTg0NyDK0oF7UrLAhBMkSX4ToExAOP4hdawg@mail.gmail.com>
Date: Fri, 23 Aug 2019 13:30:41 -0500
Message-ID: <CANf970YT5wiZ-QJFTVXUj+65ZLwawG3x-7HAOe9EUj+ByDoZZA@mail.gmail.com>
To: Kevin Hernandez <hernandezkevinbhs@gmail.com>
Subject: Re: [USRP-users] UHD Python API on windows
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4425021353610294754=="
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

--===============4425021353610294754==
Content-Type: multipart/alternative; boundary="0000000000009f2e390590cd0171"

--0000000000009f2e390590cd0171
Content-Type: text/plain; charset="UTF-8"

Hey Kevin,

Not sure if this is still on your radar, but the binary packages for
Windows should always install Python headers [1]. Would you be able to
provide some more detail regarding what you're struggling with?

[1] https://files.ettus.com/manual/page_python.html

- Sam

On Fri, Aug 16, 2019 at 3:39 PM Kevin Hernandez via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> Looking at the manual, I have downloaded the windows binary install
> packages for the UHD. From here I am not too sure what to do. I tried using
> CMake GUI but I get an error that the files do not contain CMake lists.
> From here I am not too sure what I am doing wrong.
>
> Thank you
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000009f2e390590cd0171
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D"gmail-:18j" class=3D"gmail-a3s gmail-aXjCH"><di=
v dir=3D"ltr"><div>Hey Kevin,</div><div><br></div><div>Not
 sure if this is still on your radar, but the binary packages for=20
Windows should always install Python headers [1]. Would you be able to=20
provide some more detail regarding what you&#39;re struggling with?</div><d=
iv><br></div><div>[1] <a href=3D"https://files.ettus.com/manual/page_python=
.html" target=3D"_blank">https://files.ettus.com/manual/page_python.html</a=
></div><div><br></div></div></div><div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D=
"ltr">- Sam<br></div></div></div></div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 16, 2019 at 3:39 P=
M Kevin Hernandez via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello,<div><br></div><di=
v>Looking at the manual, I have downloaded the windows binary install packa=
ges for the UHD. From here I am not too sure what to do. I tried using CMak=
e GUI but I get an error that the files do not contain CMake lists. From he=
re I am not too sure what I am doing wrong.=C2=A0</div><div><br></div><div>=
Thank you</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000009f2e390590cd0171--


--===============4425021353610294754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4425021353610294754==--

