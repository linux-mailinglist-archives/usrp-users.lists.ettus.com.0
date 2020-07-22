Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B96229EAC
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 19:41:51 +0200 (CEST)
Received: from [::1] (port=53072 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyIkX-0000x6-N5; Wed, 22 Jul 2020 13:41:49 -0400
Received: from mail-qt1-f169.google.com ([209.85.160.169]:44255)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1jyIkT-0000pJ-E0
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 13:41:45 -0400
Received: by mail-qt1-f169.google.com with SMTP id j10so2411013qtq.11
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 10:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bRWLD0a6/mSNGbV5GpU2yn4uAYXKc3o3y0X9fTHqsAg=;
 b=pDXlLXuwi2Z0on9VvUnnXHrIM652kZY8L/DzEuGRUhgFftQf7c9Hz4YkB+nkst2en6
 DPwf+6kgHTn03pzi/8gAVm0FuGEVuTVQOE58MA2UM/wrCRH0hGk8b/37EuX99echawQi
 mjBAF3BtSkcPIggKu8H3tVfnB9D8ZTBMfF0St/PTnuEiKPdw+alSkHH4T5X9TK29JlRU
 xy1SiznDA2NOupoukU/YCYTyY5av/8vxKCG/M2oQvEjtAjKq0OBOboTHsK0UCH9fBy4n
 P6DmR7FJ60i5q0m3k1/7etQGBr0p6IrcZuwHskgZ9MtLJfzDEH3ePsbYECRi/RdzAigO
 vouw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bRWLD0a6/mSNGbV5GpU2yn4uAYXKc3o3y0X9fTHqsAg=;
 b=q+3PamC1EzQsPWm8PfcsNtP712g99ikza6ZklC72hcCTGhJtMUJpDQj3MBAglDdHId
 eEBofSRX1MCQdjpCjgvKCQrAWpRw/KHNZ1LNWjqIGXi+ocYtLa+xeGZoUBy4AKWmU0gU
 oyeHeUgnBRMMFP8W8WpBudkKP8FgQjVnjMET+MiYtb/Ekgj1X7hR5OXYrsxyKvlU28n9
 OKUXH7wS+SQtBT7MNY608bM7S/jS7mbOObljrP69gyqTkmLz8o0oLgqvFrsr8LkDzDYe
 qrt6dtsYYqVMpQQwVWt2nOjzA3pJnA9gYUrYBSMAZefqc0claDuIjTDzSRj8jan/9fQd
 m07g==
X-Gm-Message-State: AOAM533Png1xhuiI8LyFS5S4UToSWFfBGU7dHvXYukURMbOKrdb9dobJ
 ELJDeep92gxicspPqiq4TYmC++M2qyzJsDIZayQ=
X-Google-Smtp-Source: ABdhPJxzTY2zxjPKpQBnycLeyiaQyU68qbCJer916pEqun8wUCTDLjk9aP8t/jb04+mdpQIbWNTwDWoZzhIXrPhuK3k=
X-Received: by 2002:ac8:3fcb:: with SMTP id v11mr494518qtk.348.1595439664746; 
 Wed, 22 Jul 2020 10:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
 <5F187365.7030104@gmail.com>
 <CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com>
 <5F187873.2040206@gmail.com>
In-Reply-To: <5F187873.2040206@gmail.com>
Date: Wed, 22 Jul 2020 19:40:52 +0200
Message-ID: <CA+w2ZytC0pPxp7GOCzE8m6m9FgUZLqDHwAgM1GzH8HLgV26O=A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] C++ thread Priority.
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
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============1132942130212360338=="
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

--===============1132942130212360338==
Content-Type: multipart/alternative; boundary="0000000000007a552d05ab0b3e75"

--0000000000007a552d05ab0b3e75
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It just put received samples in a circular buffer and  transmit this
buffer. A delay line.
But the SR is 50 Msps... 8 bits.
 Do you have ideas about OS ?
Thanks.

Le mer. 22 juil. 2020 =C3=A0 19:33, Marcus D. Leech <patchvonbraun@gmail.co=
m> a
=C3=A9crit :

> On 07/22/2020 01:22 PM, David Carsenat wrote:
>
> Ok thanks. The code is really simple and i don't think it can be
> optimized.
> Is there other linux OS i can try ?
> Thanks again.
>
> If it's really simple, what is the sample-rate?  Is it trying to write
> data to the filesystem at high rates?  No amount of code optimization can
> get
>   around the fact that the disk subsystem is very slow compared to other
> parts of the computer, like memory, CPU, etc.
>
>
> Le mer. 22 juil. 2020 =C3=A0 19:12, Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> a =C3=A9crit :
>
>> On 07/22/2020 12:56 PM, David Carsenat via USRP-users wrote:
>> > Hello, I have made a c++ code which sends samples in the main function
>> > and receives samples in a thread launched in this main function.
>> > I have read that we can set the real time priority with the
>> > set_thread_priority function.
>> > I have tried to call this function (with parameters (1,true) inside
>> > the main function but it doesn't seem to change the priority of the
>> > executable. When I launch another application, I have lots of U and O.
>> >
>> > Do you have an idea how to achieve what I want ? i.e. allocate almost
>> > all computer resources to my uhd program ? What is the best way ?
>> > I have already tuned my ubuntu with advice given on Ettus site.(
>> > cpu-freq set etc...)
>> >
>> > Many thanks
>> >
>> > David
>> >
>> In general, applications have only very-rough control over the behavior
>> of the scheduler.  This is true in most general-purpose operating system
>>    environments, whether it's Windows, Linux, *BSD, MacOS, etc.
>>
>> If you've played with priorities, and starting up other programs causes
>> OU to happen, you should probably consider:
>>
>> (A) Optimizing your code -- find out where the hot-spots are, and see if
>> they can be improved
>> (B) Choosing a faster CPU
>>
>> The CPU usage of a DSP flow is roughly proportional to:
>>
>> inherent-per-sample-complexity X sample-rate
>>
>> Can you lower the sample rate and still achieve what you need to
>> achieve?  Can you improve the main-path per-sample complexity?
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>

--0000000000007a552d05ab0b3e75
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It just put received samples in a circular buffer and=C2=
=A0 transmit this buffer. A delay line.=C2=A0<div dir=3D"auto">But the SR i=
s 50 Msps... 8 bits.</div><div dir=3D"auto">=C2=A0Do you have ideas about O=
S ?</div><div dir=3D"auto">Thanks.</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">Le mer. 22 juil. 2020 =C3=A0 19:33,=
 Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbra=
un@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 07/22/2020 01:22 PM, David Carsenat
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"auto">Ok thanks. The code is really simple and i don&#39;=
t
        think it can be optimized.=C2=A0
        <div dir=3D"auto">Is there other linux OS i can try ?</div>
        <div dir=3D"auto">Thanks again.</div>
      </div>
      <br>
    </blockquote>
    If it&#39;s really simple, what is the sample-rate?=C2=A0 Is it trying =
to
    write data to the filesystem at high rates?=C2=A0 No amount of code
    optimization can get<br>
    =C2=A0 around the fact that the disk subsystem is very slow compared to
    other parts of the computer, like memory, CPU, etc.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">Le mer. 22 juil. 2020 =C3=A0 =
19:12,
          Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@l=
ists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus=
.com</a>&gt;
          a =C3=A9crit=C2=A0:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">On
          07/22/2020 12:56 PM, David Carsenat via USRP-users wrote:<br>
          &gt; Hello, I have made a c++ code which sends samples in the
          main function <br>
          &gt; and receives samples in a thread launched in this main
          function.<br>
          &gt; I have read that we can set the real time priority with
          the <br>
          &gt; set_thread_priority function.<br>
          &gt; I have tried to call this function (with parameters
          (1,true) inside <br>
          &gt; the main function but it doesn&#39;t seem to change the
          priority of the <br>
          &gt; executable. When I launch another application, I have
          lots of U and O.<br>
          &gt;<br>
          &gt; Do you have an idea how to achieve what I want ? i.e.
          allocate almost <br>
          &gt; all computer resources to my uhd program ? What is the
          best way ?<br>
          &gt; I have already tuned my ubuntu with advice given on Ettus
          site.( <br>
          &gt; cpu-freq set etc...)<br>
          &gt;<br>
          &gt; Many thanks<br>
          &gt;<br>
          &gt; David<br>
          &gt;<br>
          In general, applications have only very-rough control over the
          behavior <br>
          of the scheduler.=C2=A0 This is true in most general-purpose
          operating system<br>
          =C2=A0 =C2=A0environments, whether it&#39;s Windows, Linux, *BSD,=
 MacOS,
          etc.<br>
          <br>
          If you&#39;ve played with priorities, and starting up other
          programs causes <br>
          OU to happen, you should probably consider:<br>
          <br>
          (A) Optimizing your code -- find out where the hot-spots are,
          and see if <br>
          they can be improved<br>
          (B) Choosing a faster CPU<br>
          <br>
          The CPU usage of a DSP flow is roughly proportional to:<br>
          <br>
          inherent-per-sample-complexity X sample-rate<br>
          <br>
          Can you lower the sample rate and still achieve what you need
          to <br>
          achieve?=C2=A0 Can you improve the main-path per-sample complexit=
y?<br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
          <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">ht=
tp://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--0000000000007a552d05ab0b3e75--


--===============1132942130212360338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1132942130212360338==--

