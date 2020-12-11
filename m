Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 939072D82AE
	for <lists+usrp-users@lfdr.de>; Sat, 12 Dec 2020 00:23:40 +0100 (CET)
Received: from [::1] (port=56714 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1knrlC-0005Oh-Af; Fri, 11 Dec 2020 18:23:38 -0500
Received: from mail-ot1-f46.google.com ([209.85.210.46]:44403)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1knrl8-0005LX-Ui
 for usrp-users@lists.ettus.com; Fri, 11 Dec 2020 18:23:34 -0500
Received: by mail-ot1-f46.google.com with SMTP id f16so9798125otl.11
 for <usrp-users@lists.ettus.com>; Fri, 11 Dec 2020 15:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YUk5IlF5X44xTq04FwTh1L3Yn2VEIk/NW5IBe8Ml3R8=;
 b=TQEaZb7UjZav6G00wQy96d72oxJuPhJ5aDghsw/MCdwizPcyTISj+6scjnug01wI1K
 qX+bLCe24ykGiaTUCSM9+/wJej9dyg32axjSo5d5/tktCSBDRqJVRaVbAN5DZ/P7H72r
 VCwzlV5dF/BdswzkqkwaiXH51VsTTcpmjpjceirq42RUwo82TW6wkTD7XaZPc3StVr5D
 A0ZiYqD33vqfoRDyKZtstdkbPyB261hxJP7vYZEXJASmZM/5ClYFHYeHhPZGep1Y4P/O
 zDt5bm/RPdUpAnzJH6KI0B1GvR6xbSvb+XfNdei1egq1mhWXBt2AXY0qiJFs9bTNSDcW
 v6ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YUk5IlF5X44xTq04FwTh1L3Yn2VEIk/NW5IBe8Ml3R8=;
 b=ltOiEGILnN2gBUcltH0fsF2QYg7XAPLAjv/aNN9BM7pyawca1u+Ie69NW3Uh+/JAok
 T5JtxVBGJXwEL3T62n3GzFu/totCvYQBve/h8UEJToQeqM7fJZxgcyqO6N+McfjARYaf
 u5zxG+3CIft6gi/9sKY6PBzyMOM8ng/8zaXqqcg2MN/XIwTUPsAEr27qTHfdUbBK0f2H
 rH6jY/ij5spnujnkT7V0j7WMeZTUPbcEOzK9KTpvxXU/RPpe+C0D+MmcjIG6cSxj+n9A
 UdXV8sYkkKDTfaL3oViem8xe0YsmlIcBJz0rLfGtNtf3Xxv5fA6scLxnBHlSQKP4hiMM
 LHFA==
X-Gm-Message-State: AOAM530Vupktt4HXBvjiqM5oY1HSl4vpYVkaZangjxJHOlPtWaBvqkZy
 kLaH+Orgp/GhHgUAz2Fce21te7QefXaNQTs1Vi3t9Mra
X-Google-Smtp-Source: ABdhPJxI/qJ/m3F8yMRTMxuObPp0vXJoNAuNPkLrt9zPeDVA4I9ZxNpeKxTIV+2Jg+VKfTUz7U3J7WAIGZ1/+CN/DEY=
X-Received: by 2002:a9d:470c:: with SMTP id a12mr11483778otf.161.1607728974071; 
 Fri, 11 Dec 2020 15:22:54 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTQa8v40-nQGCQMcK36317oWxue448NrMoMYvbf3oacmug@mail.gmail.com>
In-Reply-To: <CAB__hTQa8v40-nQGCQMcK36317oWxue448NrMoMYvbf3oacmug@mail.gmail.com>
Date: Fri, 11 Dec 2020 17:22:44 -0600
Message-ID: <CAFche=htoRKHMituvggWa15UwoiVkdR6n=3EXYK6d5TR696SiQ@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC 4.0 data swapping?
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============3999168593865480139=="
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

--===============3999168593865480139==
Content-Type: multipart/alternative; boundary="000000000000651eb605b6389219"

--000000000000651eb605b6389219
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

The SEPs do have the ability to swap I and Q. This is because on the host
computer, I is usually in the lower bits and Q is in the upper bits of each
32-bit word, but in RFNoC, for historical reasons, I goes in the upper bits
and Q in the lower bits. The software programs the IQ swapping when it sets
up the graph.

I assume you're using dynamic connections (through the crossbar) to control
the number of FFTs the data is passed through, and not static connections?
If that's the case then I wonder if software configures IQ swapping
incorrectly in some configurations. I'll see if I can do some testing next
week to confirm if it's working correctly.

As for negation, I'm not aware of anywhere we do that off the top of my
head. Is that behavior block dependent? I'll see if I can find anywhere
this happens.

Thanks,

Wade

On Thu, Dec 10, 2020 at 3:54 PM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
> I am encountering very strange behavior with a custom FPGA image (N310).
> It appears that data streaming through SEPs can get swapped (I/Q) and/or
> negated.  Is anyone at Ettus aware of anything that could cause this?  Of
> course, the issue might be on my end, but I can't think of what it might be
> given that all of my custom blocks work as expected in isolation (if the
> block is the only block in graph).
>
> My custom image is the following:
>
>    - default blocks of Radios, DDCs, DUCs (each 2x2 and statically
>    connected as in default image)
>    - custom blocks of two 1x1 windowed-fft blocks, two 1x1 vector-avg
>    blocks, and one 2x2 custom block. Note: each of these blocks is connected
>    to its own SEP, so I can connect dynamically in any fashion.
>
> My test case is transmitting 8192 random samples from host to FFT block
> and then optionally through a 2nd FFT block before back to host.  In the
> test case, the radios/DDCs/DUCs are not used.
>
> Here is what I observed:
>
>    - If I only include 1 FFT block in my RFNoC graph, I get the expected
>    results (the output from the FPGA matches what I calculate in Matlab for
>    the FFT).  This is true for either of the two FFT blocks.
>    - If I include both FFT blocks in series, I can only match the FPGA
>    output if I swap the I/Q values in between my Matlab FFTs.
>    - Note: that this issue is not FFT-related as I can also duplicate
>    this issue with the other blocks.
>    - If I use 3 blocks in series (each through SEP), I need to negate
>    certain data in order to get it to match the FPGA output
>
> My next step is likely to build a new image with Ettus-developed FIFOs to
> prove that the data is getting swapped/negated when 2 or more are used in
> series through SEPs.
>
> Let me know if you have any suggestions for other things to try.
>
> Rob
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000651eb605b6389219
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>The SEPs do have the=
 ability to swap I and Q. This is because on the host computer, I is usuall=
y in the lower bits and Q is in the upper bits of each 32-bit word, but in =
RFNoC, for historical reasons, I goes in the upper bits and Q in the lower =
bits. The software programs the IQ swapping when it sets up the graph. </di=
v><div><br></div><div>I assume you&#39;re using dynamic connections (throug=
h the crossbar) to control the number of FFTs the data is passed through, a=
nd not static connections? If that&#39;s the case then=20
I wonder if software configures IQ swapping incorrectly in some configurati=
ons.

I&#39;ll see if I can do some testing next week to confirm if it&#39;s work=
ing correctly.</div><div><br></div><div>As for negation, I&#39;m not aware =
of anywhere we do that off the top of my head. Is that behavior block depen=
dent? I&#39;ll see if I can find anywhere this happens.</div><div><br></div=
><div>Thanks,</div><div><br></div><div>Wade=C2=A0 <br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 10,=
 2020 at 3:54 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I=
 am encountering very strange behavior with a custom FPGA image (N310). It =
appears that data streaming through SEPs can get swapped (I/Q) and/or negat=
ed.=C2=A0=C2=A0Is anyone at Ettus aware of=C2=A0anything that could cause t=
his?=C2=A0 Of course, the issue might be on my end, but I can&#39;t think o=
f what it might be given that all of my custom blocks work as expected in i=
solation (if the block is the only block in graph).</div><div><br></div><di=
v>My custom image is the following:</div><div><ul><li>default blocks of Rad=
ios, DDCs, DUCs (each 2x2 and statically connected as in default image)</li=
><li>custom blocks of=C2=A0two 1x1 windowed-fft blocks, two 1x1 vector-avg =
blocks, and one 2x2 custom block. Note: each of these blocks is connected t=
o its own SEP, so I can connect dynamically in any fashion.</li></ul><div>M=
y test case is transmitting 8192 random samples from host to FFT block and =
then optionally through a 2nd FFT block before back to host.=C2=A0 In the t=
est case, the radios/DDCs/DUCs are not used.</div><div><br></div>Here is wh=
at I observed:<br><ul><li>If I only include 1 FFT block in my RFNoC graph, =
I get the expected results (the output from the FPGA matches what I calcula=
te in Matlab for the FFT).=C2=A0 This is true for either of the two FFT blo=
cks.</li><li>If I include both FFT blocks in series, I can only match the F=
PGA output if I swap the I/Q values in between my Matlab FFTs.</li><li>Note=
: that this issue is not FFT-related as I can also duplicate this issue wit=
h the other blocks.=C2=A0</li><li>If I use 3 blocks in series (each through=
 SEP), I need to negate certain data in order to get it to match the FPGA o=
utput</li></ul><div>My next step is likely to build a new image with Ettus-=
developed FIFOs to prove that the data is getting swapped/negated when 2 or=
 more are used in series through SEPs.</div></div><div><br></div><div>Let m=
e know if you have any suggestions for other things to try.<br></div><div><=
br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000651eb605b6389219--


--===============3999168593865480139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3999168593865480139==--

