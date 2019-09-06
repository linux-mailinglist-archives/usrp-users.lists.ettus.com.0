Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1D8AC284
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 00:27:05 +0200 (CEST)
Received: from [::1] (port=58522 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6Mh6-0003HV-1E; Fri, 06 Sep 2019 18:27:04 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:40533)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <bistromath@gmail.com>)
 id 1i6Mh2-00038f-GB
 for usrp-users@lists.ettus.com; Fri, 06 Sep 2019 18:27:00 -0400
Received: by mail-io1-f48.google.com with SMTP id h144so16304149iof.7
 for <usrp-users@lists.ettus.com>; Fri, 06 Sep 2019 15:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mSsBuljOa5sDEsBCNG7U9VHK0oOmQ4zcic1kVNpjNeY=;
 b=RZhNv+W9FL0QT4Yemnx0jLv1aZVdx5rpG6AeK/mv4K7xDsjfc14o5pPfHVvRxNYpMp
 XpeiOCJBV3eD5Y1h4XYjdiTSItecIDBtj1ygryHY3sqzCE8wKhm2u0BbfkUXHJClPbTW
 Y3ALndkd9OUFRw5tfRZ7v96roGTp/5t5epx5OgLTQq0n2LrjnisJKHkHxERNepXmpnQZ
 bVLGbAMOw+tjHc4laBCn0yVVt4flEy3h6ArdfgY+i5e9kFFMtVmXIzkliDoAlPlyVRMT
 47ABoNlDctoe9dqfeHEiiSguMABItMRuh0/gh+gZ2r/o5wENUNrUuRPfNTAwoeXoBg9f
 XH/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mSsBuljOa5sDEsBCNG7U9VHK0oOmQ4zcic1kVNpjNeY=;
 b=DAD1r0dJCu+tFH1g4qqvFV/fh6VZbp7HZi67GpD1saHXX7f9u9XGitXVkoc0A6Kkhh
 ZMdp7TM25xVjL/+QLKwIRzEQ/+76wXCi14LwrOBJO97flmAWl/QaQx5Jpnnry6xyDVfs
 MEn4TuVB/jez1q8ATqgmJkaKQvRrr1kXGeNRZqwjk+Qa1qs4JyZHTex8QhsLG/qCnGdM
 A78G4dC8oRiEX8rH9pW4O7o8Ngsm1Eh6aPe9K/Mtp0OHzOLAcQB56vyMZfBcSHQJG4+U
 SC9HJBqCl9FlNegLv+UPDhb9UJthc2ucizQ3SAa6ZYGUCqBdOZ6F7fkvq+gghPIP/OnW
 jX8A==
X-Gm-Message-State: APjAAAVcVdul77jY8EAwl0K8JmnuuTR8cmQSTJG8pR4jwzatAPlrBfTP
 huYXrfDhKrKFb39L8vDKMaNAJ5q0Mu/R2e6NfFs=
X-Google-Smtp-Source: APXvYqyE9ksB/XeqZOmBbchgb/EUlZZqoWA51QO7xd4oWYWNgeAOomUmhiElXBTFFq+nOv5qtBFbbhqSp96QwX2w95I=
X-Received: by 2002:a02:7702:: with SMTP id g2mr12433520jac.92.1567808779167; 
 Fri, 06 Sep 2019 15:26:19 -0700 (PDT)
MIME-Version: 1.0
References: <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel.ref@sbcglobal.net>
 <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel@sbcglobal.net>
In-Reply-To: <a39ce184e0fd70ed16f5fce920af81f514a4392d.camel@sbcglobal.net>
Date: Fri, 6 Sep 2019 15:26:11 -0700
Message-ID: <CA+JMMq_PWfCwHKYbuVNUBSkLStLJsHr2TuV7aEEatFO1Mp3mPQ@mail.gmail.com>
To: "d.des" <d.des@sbcglobal.net>
Content-Type: multipart/mixed; boundary="0000000000005f67a70591e9edd5"
Subject: Re: [USRP-users] Addsub HLS Block Error
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Cc: etus list <usrp-users@lists.ettus.com>
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

--0000000000005f67a70591e9edd5
Content-Type: multipart/alternative; boundary="0000000000005f67a40591e9edd3"

--0000000000005f67a40591e9edd3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here's a modified add-only block. You'll have to make a matching .xml
descriptor and GRC block (if you're using gr-ettus).

Probably it would be a super useful thing to have an add/sub block, instead
of an addsub block. A register-controlled mux to select which operation you
want. I'll think about adding that to the Theseus Cores project.

Nick

On Fri, Sep 6, 2019 at 3:18 PM d.des via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Nick-
> Could you share the tricks to remove one of the output ports? I don't
> I'm having similar issues with my modified addsub block and don't have
> enough room on the e310 fpga for extra fifos. It's not obvious from the
> noc_block_addsub code, the use of splitstream and dummy variables is
> very confusing.
>
> Tnx,
> Dave (and I'm sure many others, based on threads I've seen in searches)
>
> ________________________________
> From: Nick Foster <bistromath at gmail.com>
> Sent: Tuesday, September 3, 2019 11:45:46 PM
> To: Quadri,Adnan <adnan.quadri at louisville.edu>
> Cc: usrp-users at lists.ettus.com <usrp-users at lists.ettus.com>
> Subject: Re: [USRP-users] Addsub HLS Block Error
>
> That shouldn't be. Even if you connect both outputs to the host?
>
> I admit I got fed up with it in my own application (don't want both
> streams going into the host) and just modified the addsub block to be
> an add-only block.
>
> On Tue, Sep 3, 2019 at 8:43 PM Quadri,Adnan <adnan.quadri at
> louisville.edu<mailto:adnan.quadri at louisville.edu>> wrote:
> I tried connecting one Signal Source block to both the inputs of addsub
> block. It still throws the same error.
>
> Adnan
> ________________________________
> From: Nick Foster <bistromath at gmail.com<mailto:bistromath at
> gmail.com>>
> Sent: Tuesday, September 3, 2019 11:40:05 PM
> To: Quadri,Adnan <adnan.quadri at louisville.edu<mailto:adnan.quadri at
> louisville.edu>>
> Cc: usrp-users at lists.ettus.com<mailto:usrp-users at lists.ettus.com>
> <usrp-users at lists.ettus.com<mailto:usrp-users at lists.ettus.com>>
> Subject: Re: [USRP-users] Addsub HLS Block Error
>
> Oh, I see. You have separate sources connected to the same addsub
> block. It's telling you that you need to use timed stream commands to
> start the stream, or else you will see undefined behavior. Personally I
> think that error should be demoted to a warning -- anyone from Ettus
> want to chime in?
>
> On Tue, Sep 3, 2019 at 3:53 PM Quadri,Adnan <adnan.quadri at
> louisville.edu<mailto:adnan.quadri at louisville.edu>> wrote:
> Hello,
>
> Thank you for your prompt response. I have connected both the addsub
> output to two QT Gui Sink but I still get the same error. I have the
> Copy block in the middle as well.
>
> I am attaching a screenshot of my flowgraph. I tried with different
> USRP sources/Signal Sources as well. But it is the same error.
>
> Thanks,
> Adnan
>
> ________________________________
> From: Nick Foster <bistromath at gmail.com<mailto:bistromath at
> gmail.com>>
> Sent: Tuesday, September 3, 2019 3:57 PM
> To: Quadri,Adnan <adnan.quadri at louisville.edu<mailto:adnan.quadri at
> louisville.edu>>
> Cc: usrp-users at lists.ettus.com<mailto:usrp-users at lists.ettus.com>
> <usrp-users at lists.ettus.com<mailto:usrp-users at lists.ettus.com>>
> Subject: Re: [USRP-users] Addsub HLS Block Error
>
> I ran into this the other day and it's independent of the HLS component
> of the addsub block (since the interface is identical). You need to
> connect both outputs of the addsub block to something, even a null
> sink. I'm pretty sure this wasn't the intended behavior and also pretty
> sure that it wasn't like this last time I checked (which was more than
> a year ago), so maybe it should be filed as a bug.
>
> Nick
>
> On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users <usrp-users
> at lists.ettus.com<mailto:usrp-users at lists.ettus.com>> wrote:
> Hello,
>
> We are trying to run the RFNoC addsub HLS block.
>
> I was able to build the FPGA Image and made sure in the noc_block
> verilog code to point to the HLS implementation for addsub block on
> RFNoC as opposed to the verilog/VHDL implementation.
>
> But when we run the example Flowgraph with two signal source as input
> to the two inputs for addsub block on GRC, we get the following error -
>
> ERROR:
> thread[thread-per-block[4]: <block uhd_rfnoc_AddSub (1)>]:
> RuntimeError: Invalid recv stream command - stream now on multiple
> channels in a single streamer will fail to time align.
>
> Does this have anything to do with the C++ code for HLS implementation
> or is it a problem at UHD level?
>
> Thanks,
> Adnan
> _______________________________________________
> USRP-users mailing list
> USRP-users at lists.ettus.com<mailto:USRP-users at lists.ettus.com>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<
> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mai=
lman_listinfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DOAG1LQNACBDguGv=
BeNj18Swhr9TMTjS-x4O_KuapPgY&r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02=
U&m=3DXH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&s=3D_hsJH03rqnDSUZXWGyx31=
-8I7HJLsU5_S5hs-j5_WRw&e=3D
> >
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
>
> http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/2=
0190904/3138375d/attachment.html
> >
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000005f67a40591e9edd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Here&#39;s a modified add-only block. You&#39;ll have=
 to make a matching .xml descriptor and GRC block (if you&#39;re using gr-e=
ttus).</div><div><br></div><div>Probably it would be a super useful thing t=
o have an add/sub block, instead of an addsub block. A register-controlled =
mux to select which operation you want. I&#39;ll think about adding that to=
 the Theseus Cores project.<br></div><div><br></div><div>Nick<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, Sep 6, 2019 at 3:18 PM d.des via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Nick-<br>
Could you share the tricks to remove one of the output ports? I don&#39;t<b=
r>
I&#39;m having similar issues with my modified addsub block and don&#39;t h=
ave<br>
enough room on the e310 fpga for extra fifos. It&#39;s not obvious from the=
<br>
noc_block_addsub code, the use of splitstream and dummy variables is<br>
very confusing.<br>
<br>
Tnx,<br>
Dave (and I&#39;m sure many others, based on threads I&#39;ve seen in searc=
hes)<br>
<br>
________________________________<br>
From: Nick Foster &lt;bistromath at <a href=3D"http://gmail.com" rel=3D"nor=
eferrer" target=3D"_blank">gmail.com</a>&gt;<br>
Sent: Tuesday, September 3, 2019 11:45:46 PM<br>
To: Quadri,Adnan &lt;adnan.quadri at <a href=3D"http://louisville.edu" rel=
=3D"noreferrer" target=3D"_blank">louisville.edu</a>&gt;<br>
Cc: usrp-users at <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" tar=
get=3D"_blank">lists.ettus.com</a> &lt;usrp-users at <a href=3D"http://list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">lists.ettus.com</a>&gt;<b=
r>
Subject: Re: [USRP-users] Addsub HLS Block Error<br>
<br>
That shouldn&#39;t be. Even if you connect both outputs to the host?<br>
<br>
I admit I got fed up with it in my own application (don&#39;t want both<br>
streams going into the host) and just modified the addsub block to be<br>
an add-only block.<br>
<br>
On Tue, Sep 3, 2019 at 8:43 PM Quadri,Adnan &lt;adnan.quadri at<br>
<a href=3D"http://louisville.edu" rel=3D"noreferrer" target=3D"_blank">loui=
sville.edu</a>&lt;mailto:<a href=3D"mailto:adnan.quadri" target=3D"_blank">=
adnan.quadri</a> at <a href=3D"http://louisville.edu" rel=3D"noreferrer" ta=
rget=3D"_blank">louisville.edu</a>&gt;&gt; wrote:<br>
I tried connecting one Signal Source block to both the inputs of addsub<br>
block. It still throws the same error.<br>
<br>
Adnan<br>
________________________________<br>
From: Nick Foster &lt;bistromath at <a href=3D"http://gmail.com" rel=3D"nor=
eferrer" target=3D"_blank">gmail.com</a>&lt;mailto:<a href=3D"mailto:bistro=
math" target=3D"_blank">bistromath</a> at<br>
<a href=3D"http://gmail.com" rel=3D"noreferrer" target=3D"_blank">gmail.com=
</a>&gt;&gt;<br>
Sent: Tuesday, September 3, 2019 11:40:05 PM<br>
To: Quadri,Adnan &lt;adnan.quadri at <a href=3D"http://louisville.edu" rel=
=3D"noreferrer" target=3D"_blank">louisville.edu</a>&lt;mailto:<a href=3D"m=
ailto:adnan.quadri" target=3D"_blank">adnan.quadri</a> at<br>
<a href=3D"http://louisville.edu" rel=3D"noreferrer" target=3D"_blank">loui=
sville.edu</a>&gt;&gt;<br>
Cc: usrp-users at <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" tar=
get=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:usrp-users" =
target=3D"_blank">usrp-users</a> at <a href=3D"http://lists.ettus.com" rel=
=3D"noreferrer" target=3D"_blank">lists.ettus.com</a>&gt;<br>
&lt;usrp-users at <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" tar=
get=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:usrp-users" =
target=3D"_blank">usrp-users</a> at <a href=3D"http://lists.ettus.com" rel=
=3D"noreferrer" target=3D"_blank">lists.ettus.com</a>&gt;&gt;<br>
Subject: Re: [USRP-users] Addsub HLS Block Error<br>
<br>
Oh, I see. You have separate sources connected to the same addsub<br>
block. It&#39;s telling you that you need to use timed stream commands to<b=
r>
start the stream, or else you will see undefined behavior. Personally I<br>
think that error should be demoted to a warning -- anyone from Ettus<br>
want to chime in?<br>
<br>
On Tue, Sep 3, 2019 at 3:53 PM Quadri,Adnan &lt;adnan.quadri at<br>
<a href=3D"http://louisville.edu" rel=3D"noreferrer" target=3D"_blank">loui=
sville.edu</a>&lt;mailto:<a href=3D"mailto:adnan.quadri" target=3D"_blank">=
adnan.quadri</a> at <a href=3D"http://louisville.edu" rel=3D"noreferrer" ta=
rget=3D"_blank">louisville.edu</a>&gt;&gt; wrote:<br>
Hello,<br>
<br>
Thank you for your prompt response. I have connected both the addsub<br>
output to two QT Gui Sink but I still get the same error. I have the<br>
Copy block in the middle as well.<br>
<br>
I am attaching a screenshot of my flowgraph. I tried with different<br>
USRP sources/Signal Sources as well. But it is the same error.<br>
<br>
Thanks,<br>
Adnan<br>
<br>
________________________________<br>
From: Nick Foster &lt;bistromath at <a href=3D"http://gmail.com" rel=3D"nor=
eferrer" target=3D"_blank">gmail.com</a>&lt;mailto:<a href=3D"mailto:bistro=
math" target=3D"_blank">bistromath</a> at<br>
<a href=3D"http://gmail.com" rel=3D"noreferrer" target=3D"_blank">gmail.com=
</a>&gt;&gt;<br>
Sent: Tuesday, September 3, 2019 3:57 PM<br>
To: Quadri,Adnan &lt;adnan.quadri at <a href=3D"http://louisville.edu" rel=
=3D"noreferrer" target=3D"_blank">louisville.edu</a>&lt;mailto:<a href=3D"m=
ailto:adnan.quadri" target=3D"_blank">adnan.quadri</a> at<br>
<a href=3D"http://louisville.edu" rel=3D"noreferrer" target=3D"_blank">loui=
sville.edu</a>&gt;&gt;<br>
Cc: usrp-users at <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" tar=
get=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:usrp-users" =
target=3D"_blank">usrp-users</a> at <a href=3D"http://lists.ettus.com" rel=
=3D"noreferrer" target=3D"_blank">lists.ettus.com</a>&gt;<br>
&lt;usrp-users at <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" tar=
get=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:usrp-users" =
target=3D"_blank">usrp-users</a> at <a href=3D"http://lists.ettus.com" rel=
=3D"noreferrer" target=3D"_blank">lists.ettus.com</a>&gt;&gt;<br>
Subject: Re: [USRP-users] Addsub HLS Block Error<br>
<br>
I ran into this the other day and it&#39;s independent of the HLS component=
<br>
of the addsub block (since the interface is identical). You need to<br>
connect both outputs of the addsub block to something, even a null<br>
sink. I&#39;m pretty sure this wasn&#39;t the intended behavior and also pr=
etty<br>
sure that it wasn&#39;t like this last time I checked (which was more than<=
br>
a year ago), so maybe it should be filed as a bug.<br>
<br>
Nick<br>
<br>
On Tue, Sep 3, 2019 at 1:48 PM Quadri,Adnan via USRP-users &lt;usrp-users<b=
r>
at <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">=
lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:usrp-users" target=3D"_blan=
k">usrp-users</a> at <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" =
target=3D"_blank">lists.ettus.com</a>&gt;&gt; wrote:<br>
Hello,<br>
<br>
We are trying to run the RFNoC addsub HLS block.<br>
<br>
I was able to build the FPGA Image and made sure in the noc_block<br>
verilog code to point to the HLS implementation for addsub block on<br>
RFNoC as opposed to the verilog/VHDL implementation.<br>
<br>
But when we run the example Flowgraph with two signal source as input<br>
to the two inputs for addsub block on GRC, we get the following error -<br>
<br>
ERROR:<br>
thread[thread-per-block[4]: &lt;block uhd_rfnoc_AddSub (1)&gt;]:<br>
RuntimeError: Invalid recv stream command - stream now on multiple<br>
channels in a single streamer will fail to time align.<br>
<br>
Does this have anything to do with the C++ code for HLS implementation<br>
or is it a problem at UHD level?<br>
<br>
Thanks,<br>
Adnan<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users at <a href=3D"http://lists.ettus.com" rel=3D"noreferrer" target=
=3D"_blank">lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:USRP-users" tar=
get=3D"_blank">USRP-users</a> at <a href=3D"http://lists.ettus.com" rel=3D"=
noreferrer" target=3D"_blank">lists.ettus.com</a>&gt;<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a>&lt;<a href=3D"https://urldefense.proof=
point.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listinfo_usrp-2Dusers=
-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=3DOAG1LQNACBDguGvBeNj18Swhr9TMTjS-x=
4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U&amp;m=3DXH0f=
qWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&amp;s=3D_hsJH03rqnDSUZXWGyx31-8I7HJ=
LsU5_S5hs-j5_WRw&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://url=
defense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listinfo=
_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=3DOAG1LQNACBDguGvBeNj1=
8Swhr9TMTjS-x4O_KuapPgY&amp;r=3DJoNl3b2Pn0MHhs668QvjpcSGl6s3MEmtJLBypH6x02U=
&amp;m=3DXH0fqWeFmcl-P0_Y01iOhbHXEKDsJDUBaImT_nfh0t4&amp;s=3D_hsJH03rqnDSUZ=
XWGyx31-8I7HJLsU5_S5hs-j5_WRw&amp;e=3D</a>&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<br>
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/atta=
chments/20190904/3138375d/attachment.html" rel=3D"noreferrer" target=3D"_bl=
ank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachment=
s/20190904/3138375d/attachment.html</a><br>
&gt;<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000005f67a40591e9edd3--
--0000000000005f67a70591e9edd5
Content-Type: text/x-verilog; charset="US-ASCII"; name="noc_block_add.v"
Content-Disposition: attachment; filename="noc_block_add.v"
Content-Transfer-Encoding: base64
Content-ID: <f_k08os81v0>
X-Attachment-Id: f_k08os81v0

Ly8KLy8gQ29weXJpZ2h0IDIwMTUgRXR0dXMgUmVzZWFyY2ggTExDCi8vIENvcHlyaWdodCAyMDE4
IEV0dHVzIFJlc2VhcmNoLCBhIE5hdGlvbmFsIEluc3RydW1lbnRzIENvbXBhbnkKLy8KLy8gU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IExHUEwtMy4wLW9yLWxhdGVyCi8vCmBkZWZhdWx0X25ldHR5
cGUgbm9uZQptb2R1bGUgbm9jX2Jsb2NrX2FkZCAjKAogIHBhcmFtZXRlciBOT0NfSUQgPSA2NCdo
QUREMV8wMDAwXzAwMDBfMDAwMCwKICBwYXJhbWV0ZXIgU1RSX1NJTktfRklGT1NJWkUgPSAxMSkK
KAogIGlucHV0IHdpcmUgYnVzX2NsaywgaW5wdXQgd2lyZSBidXNfcnN0LAogIGlucHV0IHdpcmUg
Y2VfY2xrLCBpbnB1dCB3aXJlIGNlX3JzdCwKICBpbnB1dCB3aXJlIFs2MzowXSBpX3RkYXRhLCBp
bnB1dCB3aXJlIGlfdGxhc3QsIGlucHV0IHdpcmUgaV90dmFsaWQsIG91dHB1dCB3aXJlIGlfdHJl
YWR5LAogIG91dHB1dCB3aXJlIFs2MzowXSBvX3RkYXRhLCBvdXRwdXQgd2lyZSBvX3RsYXN0LCBv
dXRwdXQgd2lyZSBvX3R2YWxpZCwgaW5wdXQgd2lyZSBvX3RyZWFkeSwKICBvdXRwdXQgd2lyZSBb
NjM6MF0gZGVidWcKKTsKCiAgbG9jYWxwYXJhbSBNVFUgPSAxMDsKCiAgLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLwogIC8vCiAgLy8g
UkZOb0MgU2hlbGwKICAvLwogIC8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLwoKICB3aXJlIFs2MzowXSAgIGNtZG91dF90ZGF0YSwgYWNr
aW5fdGRhdGE7CiAgd2lyZSAgICAgICAgICBjbWRvdXRfdGxhc3QsIGNtZG91dF90dmFsaWQsIGNt
ZG91dF90cmVhZHksIGFja2luX3RsYXN0LCBhY2tpbl90dmFsaWQsIGFja2luX3RyZWFkeTsKCiAg
d2lyZSBbMTI3OjBdICBzdHJfc2lua190ZGF0YTsKICB3aXJlIFsxOjBdICAgIHN0cl9zaW5rX3Rs
YXN0LCBzdHJfc2lua190dmFsaWQsIHN0cl9zaW5rX3RyZWFkeTsKICB3aXJlIFs2MzowXSAgIHN0
cl9zcmNfdGRhdGE7CiAgd2lyZSAgICAgICAgICBzdHJfc3JjX3RsYXN0LCBzdHJfc3JjX3R2YWxp
ZCwgc3RyX3NyY190cmVhZHk7CgogIHdpcmUgWzMxOjBdICAgaW5fdGRhdGFbMDoxXTsKICB3aXJl
IFsxMjc6MF0gIGluX3R1c2VyWzA6MV07CiAgd2lyZSBbMTowXSAgICBpbl90bGFzdCwgaW5fdHZh
bGlkLCBpbl90cmVhZHk7CgogIHdpcmUgWzMxOjBdICAgb3V0X3RkYXRhOwogIHdpcmUgWzEyNzow
XSAgb3V0X3R1c2VyOwogIHdpcmUgICAgICAgICAgb3V0X3RsYXN0LCBvdXRfdHZhbGlkLCBvdXRf
dHJlYWR5OwoKICB3aXJlICAgICAgICAgIGNsZWFyX3R4X3NlcW51bSwgY2xlYXJfdHhfc2VxbnVt
X2JjbGs7CiAgd2lyZSBbMTU6MF0gICBzcmNfc2lkWzA6MV0sIG5leHRfZHN0X3NpZDsKCiAgc3lu
Y2hyb25pemVyICMoLklOSVRJQUxfVkFMKDEnYjApLCAuV0lEVEgoMSkpIGNsZWFyX3R4X3N5bmNf
aSAoCiAgICAuY2xrKGJ1c19jbGspLCAucnN0KDEnYjApLCAuaW4oY2xlYXJfdHhfc2VxbnVtKSwg
Lm91dChjbGVhcl90eF9zZXFudW1fYmNsaykpOwoKICAvLyBGSVhNRSB0aGlzIG5lZWRzIGFuIGF4
aV93cmFwcGVyLCBpdCB0YWxrcyAzMmJpdCBkYXRhCiAgbm9jX3NoZWxsICMoCiAgICAuTk9DX0lE
KE5PQ19JRCksCiAgICAuU1RSX1NJTktfRklGT1NJWkUoezJ7U1RSX1NJTktfRklGT1NJWkVbNzow
XX19KSwKICAgIC5NVFUoezJ7TVRVWzc6MF19fSksCiAgICAuSU5QVVRfUE9SVFMoMiksCiAgICAu
T1VUUFVUX1BPUlRTKDEpKQogIG5vY19zaGVsbCAoCiAgICAuYnVzX2NsayhidXNfY2xrKSwgLmJ1
c19yc3QoYnVzX3JzdCksCiAgICAuaV90ZGF0YShpX3RkYXRhKSwgLmlfdGxhc3QoaV90bGFzdCks
IC5pX3R2YWxpZChpX3R2YWxpZCksIC5pX3RyZWFkeShpX3RyZWFkeSksCiAgICAub190ZGF0YShv
X3RkYXRhKSwgLm9fdGxhc3Qob190bGFzdCksIC5vX3R2YWxpZChvX3R2YWxpZCksIC5vX3RyZWFk
eShvX3RyZWFkeSksCiAgICAvLyBDb21wdXRlIEVuZ2luZSBDbG9jayBEb21haW4KICAgIC5jbGso
Y2VfY2xrKSwgLnJlc2V0KGNlX3JzdCksCiAgICAvLyBDb250cm9sIFNpbmsKICAgIC5zZXRfZGF0
YSgpLCAuc2V0X2FkZHIoKSwgLnNldF9zdGIoKSwgLnNldF90aW1lKCksIC5zZXRfaGFzX3RpbWUo
KSwKICAgIC5yYl9zdGIoMidiMTEpLCAucmJfZGF0YSgxMjgnZDApLCAucmJfYWRkcigpLAogICAg
Ly8gQ29udHJvbCBTb3VyY2UKICAgIC5jbWRvdXRfdGRhdGEoY21kb3V0X3RkYXRhKSwgLmNtZG91
dF90bGFzdChjbWRvdXRfdGxhc3QpLCAuY21kb3V0X3R2YWxpZChjbWRvdXRfdHZhbGlkKSwgLmNt
ZG91dF90cmVhZHkoY21kb3V0X3RyZWFkeSksCiAgICAuYWNraW5fdGRhdGEoYWNraW5fdGRhdGEp
LCAuYWNraW5fdGxhc3QoYWNraW5fdGxhc3QpLCAuYWNraW5fdHZhbGlkKGFja2luX3R2YWxpZCks
IC5hY2tpbl90cmVhZHkoYWNraW5fdHJlYWR5KSwKICAgIC8vIFN0cmVhbSBTaW5rCiAgICAuc3Ry
X3NpbmtfdGRhdGEoc3RyX3NpbmtfdGRhdGEpLCAuc3RyX3NpbmtfdGxhc3Qoc3RyX3NpbmtfdGxh
c3QpLCAuc3RyX3NpbmtfdHZhbGlkKHN0cl9zaW5rX3R2YWxpZCksIC5zdHJfc2lua190cmVhZHko
c3RyX3NpbmtfdHJlYWR5KSwKICAgIC8vIFN0cmVhbSBTb3VyY2UKICAgIC5zdHJfc3JjX3RkYXRh
KHN0cl9zcmNfdGRhdGEpLCAuc3RyX3NyY190bGFzdChzdHJfc3JjX3RsYXN0KSwgLnN0cl9zcmNf
dHZhbGlkKHN0cl9zcmNfdHZhbGlkKSwgLnN0cl9zcmNfdHJlYWR5KHN0cl9zcmNfdHJlYWR5KSwK
ICAgIC5jbGVhcl90eF9zZXFudW0oY2xlYXJfdHhfc2VxbnVtKSwgLnNyY19zaWQoe3NyY19zaWRb
MV0sc3JjX3NpZFswXX0pLCAubmV4dF9kc3Rfc2lkKG5leHRfZHN0X3NpZCksCiAgICAucmVzcF9p
bl9kc3Rfc2lkKC8qIFVudXNlZCAqLyksIC5yZXNwX291dF9kc3Rfc2lkKC8qIFVudXNlZCAqLyks
CiAgICAuZGVidWcoZGVidWcpKTsKCiAgZ2VudmFyICAgICBpOwogIGdlbmVyYXRlCiAgZm9yIChp
PTA7IGk8MjsgaT1pKzEpCiAgICBjaGRyX2RlZnJhbWVyXzJjbGsgZGVmcmFtZXIgKAogICAgICAu
cGt0X2NsayhidXNfY2xrKSwgLnBrdF9yc3QoYnVzX3JzdCB8IGNsZWFyX3R4X3NlcW51bV9iY2xr
KSwKICAgICAgLnNhbXBfY2xrKGNlX2NsayksIC5zYW1wX3JzdChjZV9yc3QgfCBjbGVhcl90eF9z
ZXFudW0pLAogICAgICAuaV90ZGF0YShzdHJfc2lua190ZGF0YVtpKjY0KzYzOmkqNjRdKSwgLmlf
dGxhc3Qoc3RyX3NpbmtfdGxhc3RbaV0pLCAuaV90dmFsaWQoc3RyX3NpbmtfdHZhbGlkW2ldKSwg
LmlfdHJlYWR5KHN0cl9zaW5rX3RyZWFkeVtpXSksCiAgICAgIC5vX3RkYXRhKGluX3RkYXRhW2ld
KSwgLm9fdHVzZXIoaW5fdHVzZXJbaV0pLCAub190bGFzdChpbl90bGFzdFtpXSksIC5vX3R2YWxp
ZChpbl90dmFsaWRbaV0pLCAub190cmVhZHkoaW5fdHJlYWR5W2ldKSk7CiAgZW5kZ2VuZXJhdGUK
CiAgcmVnIHNvZl9pbiA9IDEnYjE7CiAgYWx3YXlzIEAocG9zZWRnZSBjZV9jbGspIGJlZ2luCiAg
ICAgaWYgKGNlX3JzdCB8IGNsZWFyX3R4X3NlcW51bSkgYmVnaW4KICAgICAgICBzb2ZfaW4gPD0g
MSdiMTsKICAgICBlbmQKICAgICBpZiAoaW5fdHZhbGlkWzBdICYgaW5fdHJlYWR5WzBdKSBiZWdp
bgogICAgICAgaWYgKGluX3RsYXN0WzBdKSBiZWdpbgogICAgICAgICAgc29mX2luIDw9IDEnYjE7
CiAgICAgICBlbmQgZWxzZSBiZWdpbgogICAgICAgICAgc29mX2luIDw9IDEnYjA7CiAgICAgICBl
bmQKICAgICBlbmQKICBlbmQKCiAgd2lyZSBoZWFkZXJfZmlmb19pX3R2YWxpZCA9IHNvZl9pbiAm
IGluX3R2YWxpZFswXSAmIGluX3RyZWFkeVswXTsKICByZWcgWzEyNzowXSBpbl90dXNlcl9yZWc7
CiAgYWx3YXlzIEAocG9zZWRnZSBjZV9jbGspIGJlZ2luCiAgICBpZiAoY2VfcnN0KSBiZWdpbgog
ICAgICAgIGluX3R1c2VyX3JlZyA8PSAnYjA7CiAgICBlbmQKICAgIGVsc2UKICAgIGJlZ2luCiAg
ICAgICAgaWYgKGhlYWRlcl9maWZvX2lfdHZhbGlkKSBiZWdpbgogICAgICAgICAgICBpbl90dXNl
cl9yZWcgPD0gaW5fdHVzZXJbMF07CiAgICAgICAgZW5kCiAgICBlbmQKICBlbmQKCiAgYXNzaWdu
IG91dF90dXNlciA9IHsgaW5fdHVzZXJfcmVnWzEyNzo5Nl0sIHNyY19zaWRbMF0sIG5leHRfZHN0
X3NpZCwgaW5fdHVzZXJfcmVnWzYzOjBdIH07CgogIGFkZHN1YiAjKC5XSURUSCgxNikpIGluc3Rf
YWRkc3ViICgKICAgICAgLmNsayhjZV9jbGspLCAucmVzZXQoY2VfcnN0KSwKICAgICAgLmkwX3Rk
YXRhKGluX3RkYXRhWzBdKSwgLmkwX3RsYXN0KGluX3RsYXN0WzBdKSwgLmkwX3R2YWxpZChpbl90
dmFsaWRbMF0pLCAuaTBfdHJlYWR5KGluX3RyZWFkeVswXSksCiAgICAgIC5pMV90ZGF0YShpbl90
ZGF0YVsxXSksIC5pMV90bGFzdChpbl90bGFzdFsxXSksIC5pMV90dmFsaWQoaW5fdHZhbGlkWzFd
KSwgLmkxX3RyZWFkeShpbl90cmVhZHlbMV0pLAogICAgICAuc3VtX3RkYXRhKG91dF90ZGF0YSks
IC5zdW1fdGxhc3Qob3V0X3RsYXN0KSwgLnN1bV90dmFsaWQob3V0X3R2YWxpZCksIC5zdW1fdHJl
YWR5KG91dF90cmVhZHkpLAogICAgICAuZGlmZl90cmVhZHkob3V0X3RyZWFkeSkpOwoKICBjaGRy
X2ZyYW1lcl8yY2xrICMoCiAgICAgIC5TSVpFKE1UVSkpCiAgICBmcmFtZXIgKAogICAgICAucGt0
X2NsayhidXNfY2xrKSwgLnBrdF9yc3QoYnVzX3JzdCB8IGNsZWFyX3R4X3NlcW51bV9iY2xrKSwK
ICAgICAgLnNhbXBfY2xrKGNlX2NsayksIC5zYW1wX3JzdChjZV9yc3QgfCBjbGVhcl90eF9zZXFu
dW0pLAogICAgICAuaV90ZGF0YShvdXRfdGRhdGEpLCAuaV90dXNlcihvdXRfdHVzZXIpLCAuaV90
bGFzdChvdXRfdGxhc3QpLCAuaV90dmFsaWQob3V0X3R2YWxpZCksIC5pX3RyZWFkeShvdXRfdHJl
YWR5KSwKICAgICAgLm9fdGRhdGEoc3RyX3NyY190ZGF0YSksIC5vX3RsYXN0KHN0cl9zcmNfdGxh
c3QpLCAub190dmFsaWQoc3RyX3NyY190dmFsaWQpLCAub190cmVhZHkoc3RyX3NyY190cmVhZHkp
KTsKCmVuZG1vZHVsZQpgZGVmYXVsdF9uZXR0eXBlIHdpcmUK
--0000000000005f67a70591e9edd5
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--0000000000005f67a70591e9edd5--

