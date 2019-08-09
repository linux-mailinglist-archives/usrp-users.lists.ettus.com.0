Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0C28734C
	for <lists+usrp-users@lfdr.de>; Fri,  9 Aug 2019 09:41:46 +0200 (CEST)
Received: from [::1] (port=52598 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvzWy-0006lg-H1; Fri, 09 Aug 2019 03:41:44 -0400
Received: from mail-ua1-f50.google.com ([209.85.222.50]:33913)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <snehabvasan@gmail.com>)
 id 1hvzWu-0006fe-LJ
 for usrp-users@lists.ettus.com; Fri, 09 Aug 2019 03:41:40 -0400
Received: by mail-ua1-f50.google.com with SMTP id c4so10591146uad.1
 for <usrp-users@lists.ettus.com>; Fri, 09 Aug 2019 00:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fC2TZCqR8a+56dkqdJWQP0ru1ewBXkfqjQZHD9vfYXY=;
 b=qxIfNSV0BQBaTqE/0MhwmFz72CkMKdeuMg4p+j0Ri9EjjOIzrRJAFs1uW0SBNMnjT7
 O1oEOohubzeXDw4ZkNhRKv+Q1EoXSWpKp5EpRiZhjdBA4pxAPz8ElcjkcnEmL2fLFhEU
 iaPhUtaLmojPv62B83sNvOpHYr9gkJmx/+9Q/dYRVZl5oVJdVMEYTQ/jeyj3rfqGfXcR
 SrR+G641gQZsGo0B64Nz+6cu3F84UJHN2enW0iqODQX1uRWFFygvG0SQtmUKMNUHWhpf
 Xm7j4Bnr/rrsApA/9TJiq3iEvL9xIcykICUfKxNdnZkMO4KZD3ar0hXvaF6KROZs7Esf
 vygQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fC2TZCqR8a+56dkqdJWQP0ru1ewBXkfqjQZHD9vfYXY=;
 b=CBeF6d58k5KaY/nVxvkIDm5jEgNb/str1XTGQpLu+UkRYStuUMQLYZ9Zv/NvpgHGzJ
 PEBaZCRf48ZidtT6uqCHQmgpWEkt2Rny7TbGpRAUmlnXrw/ERYvcdOWItYTcI/uBmG9r
 IdPXH45TvbICnth4O4W8zFTKqcFO3ZNtrgb7b9Kx7uOR9qaqdwUzPIzvMtOC7PRuhNaE
 PDvYyVRqWq3fOPKvXGuh1YLhw7GQi2iXgrvGu0AFxxnJ7pUDer4EFCmbki1oZYhkwMsz
 oNLG9bb8YjQj2GWzK/MPGS1mahcM+JLfYok2eARQ/Oe/uH1gtJgQh5rwFHzEKjC9ro4V
 FPIg==
X-Gm-Message-State: APjAAAXxvEdWpavIfIeaqmPKctMiIEUt1pAAgXMhWQ6A1TNCT38p+Apt
 nz/ohTfmHwbYiryfQVW6IlyjUPmj1u76FyTZ1NY=
X-Google-Smtp-Source: APXvYqw9KFOCilJtxMijmTJ696Zv0r273tS3jr9M8TVxSIgw8ARRv7CFsCDRncwFjDvyycyhPJmRAxo/c/5ftnlMD94=
X-Received: by 2002:ab0:30a3:: with SMTP id b3mr7873279uam.3.1565336459646;
 Fri, 09 Aug 2019 00:40:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAPLnO-LHCspbvfZjQd4Nmcq4GzxKEEOPBmXeEESSf7vboTy==Q@mail.gmail.com>
 <CAPLnO-JWykiKQRB1a1NOoMMXEyTbgXMiFUGk3K70f28LSfK+SQ@mail.gmail.com>
 <162bd826-1815-4880-8ef0-7428078c51a0@www.fastmail.com>
 <CAPLnO-Kagbfu8yn41ZV0j4P6nAwOFCOnFWPD-uN=5Sfj5u58ag@mail.gmail.com>
 <3d43bfce-93e4-4556-9478-ba30913b8c3f@www.fastmail.com>
 <5D4C7D01.8060709@gmail.com>
In-Reply-To: <5D4C7D01.8060709@gmail.com>
Date: Fri, 9 Aug 2019 09:40:48 +0200
Message-ID: <CAPLnO-JPnORCuOHs0kcW4vmSrGipRJgDAqcCnVp19ap1ixBf0w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
 Michael Dickens <michael.dickens@ettus.com>
Subject: Re: [USRP-users] Fwd: Varying delay in signal reception
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
From: Sneha vasan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sneha vasan <snehabvasan@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============0741570017030631319=="
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

--===============0741570017030631319==
Content-Type: multipart/alternative; boundary="000000000000a19bb1058faa4bde"

--000000000000a19bb1058faa4bde
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I want to know the time it takes to transmit and receive the signal,(which
is in the sense delay). I calculate this based on the time instant I
receive the signal. Since I was receiving the signal at different time
instants. And currently I am receiving the delay of 1.9e-4sec, 2.3e-4,
2.1e-4s...so on.
So I was just wondering is it common to receive this. And also with the
cable length of 20cm I expect the delay to be in =C2=B5s. Isn't it higher d=
elay?.
And I am transmitting a signal of 300=C2=B5s continuously with 20MHz sampli=
ng
rate.
I dont know if I clear enough with my explanation. Can you be specific, if
more details required.

Regards,
Sneha

On Thu, Aug 8, 2019 at 9:51 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 08/08/2019 01:32 PM, Michael Dickens via USRP-users wrote:
>
> Hi Sneha - Please "reply all" to keep the discussion on the USRP users
> email list. More eyes reading these means a greater chance that folks wil=
l
> jump in to help!
>
> The startup time for UHD / USRP / GR will be very similar between
> different runs of the exact same flowgraph, but not exactly the same. If
> you were to somehow measure these and plot them, I'd bet you'd get a curv=
e
> that looks Gaussian except with limits (a "truncated normal distribution"=
).
> The exact same file being Tx'd over and again will have a slightly
> different delay on Tx each time.
>
> Not sure this is what you're experiencing. If you don't think it is, then
> please provide more information; what we have right now is pretty thin.
>
> Hope this is useful! - MLD
>
> I was going to make the same general comment--we don't have enough
> information about exactly *what* you mean by "delay", and exactly
>   how you're measuring it.
>
> It's nearly impossible to get predictable-and-repeatable fine-scale
> latency on a software-based system running on a general-purpose
>   operating-system like Linux or Windows.  If your system-design requires
> this to be so, then you have a problem with your system design.
>
>
> On Thu, Aug 8, 2019, at 11:38 AM, Sneha vasan wrote:
>
> Hi Michael,
>
> I sent a email before I confirmed the subscription for the usrp users. So
> I was wondering if I could receive the email back if replied in usrp list=
s.
> So just forwarded once again just to be sure. Probably I would have put a
> note there.
>
> I am generating the signal using Matlab and store it in a file and then
> send it to the USRP using gnu-radio. So now when I make multiple recordin=
gs
> of the signal at different time , I am receiving the signal at varying
> intial delay . I except the delay to be constant as I am send same signal
> and with same parameters.
>
> Regards,
> Sneha
>
>
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000a19bb1058faa4bde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I want to know the time it takes to transmit and rece=
ive the signal,(which is in the sense delay). I calculate this based on the=
 time instant I receive the signal. Since I was receiving the signal at dif=
ferent time instants. And currently I am receiving the delay of 1.9e-4sec, =
2.3e-4, 2.1e-4s...so on.<br></div><div>So I was just wondering is it common=
 to receive this. And also with the cable length of 20cm I expect the delay=
 to be in =C2=B5s. Isn&#39;t it higher delay?.</div><div> And I am transmit=
ting a signal of 300=C2=B5s continuously with 20MHz sampling rate.</div><di=
v>I dont know if I clear enough with my explanation. Can you be specific, i=
f more details required.</div><div><br></div><div>Regards,</div><div>Sneha<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Aug 8, 2019 at 9:51 PM Marcus D. Leech via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-4619058625790124038moz-cite-prefix">On 08/08/201=
9 01:32 PM, Michael Dickens
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Arial">Hi=C2=A0Sneha - Please &quot;reply a=
ll&quot; to
        keep the discussion on the USRP users email list. More eyes
        reading these means a greater chance that folks will jump in to
        help!<br>
      </div>
      <div style=3D"font-family:Arial"><br>
      </div>
      <div style=3D"font-family:Arial">The startup time for UHD / USRP /
        GR will be very similar between different runs of the exact same
        flowgraph, but not exactly the same. If you were to somehow
        measure these and plot them, I&#39;d bet you&#39;d get a curve that
        looks Gaussian except with limits (a &quot;truncated normal
        distribution&quot;). The exact same file being Tx&#39;d over and ag=
ain
        will have a slightly different delay on Tx each time.</div>
      <div style=3D"font-family:Arial"><br>
      </div>
      <div style=3D"font-family:Arial">Not sure this is what you&#39;re
        experiencing. If you don&#39;t think it is, then please provide mor=
e
        information; what we have right now is pretty thin.<br>
      </div>
      <div style=3D"font-family:Arial"><br>
      </div>
      <div style=3D"font-family:Arial">Hope this is useful! - MLD<br>
      </div>
    </blockquote>
    I was going to make the same general comment--we don&#39;t have enough
    information about exactly *what* you mean by &quot;delay&quot;, and exa=
ctly<br>
    =C2=A0 how you&#39;re measuring it.<br>
    <br>
    It&#39;s nearly impossible to get predictable-and-repeatable fine-scale
    latency on a software-based system running on a general-purpose<br>
    =C2=A0 operating-system like Linux or Windows.=C2=A0 If your system-des=
ign
    requires this to be so, then you have a problem with your system
    design.<br>
    <blockquote type=3D"cite">
      <div style=3D"font-family:Arial"><br>
      </div>
      <div style=3D"font-family:Arial"><span style=3D"font-size:0.875rem;fo=
nt-family:&quot;Source Sans Pro&quot;,sans-serif">On Thu,
          Aug 8, 2019, at 11:38 AM, Sneha vasan wrote:</span><br>
      </div>
      <blockquote type=3D"cite" id=3D"gmail-m_-4619058625790124038qt">
        <div dir=3D"ltr">
          <div>Hi Michael,<br>
          </div>
          <div><br>
          </div>
          <div>I sent a email before I confirmed the subscription for
            the usrp users. So I was wondering if I could receive the
            email back if replied in usrp lists. So just forwarded once
            again just to be sure. Probably I would have put a note
            there.<br>
          </div>
          <div><br>
          </div>
          <div>I am generating the signal using Matlab and store it in a
            file and then send it to the USRP using gnu-radio. So now
            when I make multiple recordings of the signal at different
            time , I am receiving the signal at varying intial delay . I
            except the delay to be constant as I am send same signal and
            with same parameters.<br>
          </div>
          <div><br>
          </div>
          <div>Regards,<br>
          </div>
          <div>Sneha<br>
          </div>
        </div>
      </blockquote>
      <div style=3D"font-family:Arial"><br>
      </div>
      <br>
      <fieldset class=3D"gmail-m_-4619058625790124038mimeAttachmentHeader">=
</fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_-4619058625790124038moz-txt-link-abbreviated" href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a>
<a class=3D"gmail-m_-4619058625790124038moz-txt-link-freetext" href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000a19bb1058faa4bde--


--===============0741570017030631319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0741570017030631319==--

