Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBD918A8F6
	for <lists+usrp-users@lfdr.de>; Thu, 19 Mar 2020 00:06:47 +0100 (CET)
Received: from [::1] (port=44988 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jEhlp-0004Uc-TY; Wed, 18 Mar 2020 19:06:41 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:39243)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jEhlm-0004Qr-K0
 for usrp-users@lists.ettus.com; Wed, 18 Mar 2020 19:06:38 -0400
Received: by mail-ot1-f43.google.com with SMTP id r2so449833otn.6
 for <usrp-users@lists.ettus.com>; Wed, 18 Mar 2020 16:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Aoi1MXgjUzSWvZ0wxHi2TGpxV8rtDHAi0vQrNI99NLY=;
 b=E1BpGQEgbpyukR2W84d+G0K1AyAmd6MNGBrJXVwsguCBGeTTsjuU/2lpnQCg685r1m
 U1eNkG4q6nDbMvfG/ds1z/UrBSwpETZNt5b6HQIkEZ9LzQssH0YUd+6S8C2TtexV7MyM
 h6u0IQlndlJXX4cBE1Ws/J2vyBT+v3ZkVWsPNNU1D8l2LK4DT8gUXK/TugTjAGFso683
 WL7k6bdEgD4uT4e0Amj7MeIhHJEXzOoo2qU1LoWjRlZ2F4KxkejfRLidfBDN4EYr4jpF
 1G9LLiNS+tMVfD6CBrUyqhoMT6V5Anh/CMIkTloz2VPptHE7zsklI9hLghXAyrdoLcZv
 vYZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Aoi1MXgjUzSWvZ0wxHi2TGpxV8rtDHAi0vQrNI99NLY=;
 b=nIlvwhm69zrQWsZLjyiiFaK8lXtjUSGSyH6Jvy5DcLrpcPuWKRfBR6Xy1xTGgpL/D7
 FSXHmlrIUP7EVwOAdElGqrXlH+551CCWxqOdAcN6eTSEr0b4V9iU3C2GuXjlr0cqcjID
 cB9VAmLAyVu2h90rsnNpDYot+cBF2XvMZQmT6fGZ+L+hyOVOU+bkM7oSxqG5FNFvm+2A
 BmO3AzDzvda1K66oNGDB4RREc3H7Xjvg4hWNsh46gV53qETLXFTUL2UJucYwAE2LTrwL
 zxXo9d7g7txfrFIA+wX4i0sRHBOLb2Wxfi2HuVU6dtJRqegJrV5wlRrntCrgpA4JOFtF
 tjww==
X-Gm-Message-State: ANhLgQ0/FZHmpmiQGZO+b0YIaxIeP2j/TjO9+pWYcmeq2AK5zJJYGotM
 PULO92dM74K4BTuAYrmsckGAJUFRu+1tVRL0sSg9BA==
X-Google-Smtp-Source: ADFU+vt2pQnjqx3kw7u7VAurkrMhRIzRN8xhodAjOTs4NUD2UZ01U0OyASxiQBgx1H5jLe3m+/sE9hfAdxRd9YXIoCk=
X-Received: by 2002:a05:6830:c5:: with SMTP id x5mr3222oto.302.1584572757675; 
 Wed, 18 Mar 2020 16:05:57 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR09MB40771E0415D6D2E283CB54B7D9F70@MN2PR09MB4077.namprd09.prod.outlook.com>
In-Reply-To: <MN2PR09MB40771E0415D6D2E283CB54B7D9F70@MN2PR09MB4077.namprd09.prod.outlook.com>
Date: Wed, 18 Mar 2020 19:05:46 -0400
Message-ID: <CAB__hTR_VZW-2g6W537-0yc+Ayq5QGMTRGssE-tth91zxyh=mA@mail.gmail.com>
To: "Long, Jeffrey P." <jplong@mitre.org>
Subject: Re: [USRP-users] RFNOC uhd api vs traditional
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8207179547040811053=="
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

--===============8207179547040811053==
Content-Type: multipart/alternative; boundary="00000000000057bd2e05a12918e6"

--00000000000057bd2e05a12918e6
Content-Type: text/plain; charset="UTF-8"

Hi Jeff,
I have been using UHD with custom RFNoC and an N310.  Here are a few
remarks:

   - I am surprised that you can't run multi_usrp with an N310 once you
   remove DDCs and DUCs.  I thought that multi_usrp had the smarts to
   essentially skip the DUC and DDC if either the blocks were missing or if
   the user explicitly specified skip_duc, skip_duc in the make args (see
   legacy_compat.cpp).  But, even if this worked as expected, it still
   wouldn't solve your issue of handling custom flow graphs.
   - I believe you are correct in saying that certain functions are not
   provided outside of multi_usrp.  Because of this, I had to create my own
   class, 'my_rfnoc_usrp', which inherited multi_usrp.hpp and I essentially
   copied the code from muti_usrp_impl for all functions that didn't have an
   equivalent rfnoc function. But this was not a trivial task.  If you are
   only interested in a few select functions, you could just copy the code
   from multi_usrp_impl for those functions.
   - I believe you are correct in saying that 'master' changes this
   architecture.  From what I understand, 'master' is the better approach in
   the long run, but I'm just not sure how stable this new branch is in
   comparison to 3.15.LTS. And, these changes go along with some pretty major
   changes on the FPGA side.  So, moving to 'master' may be a pretty big
   undertaking.
   - You should not use rfnoc dev branch as this has been dormant for a
   long time (a couple of years)

Rob


On Tue, Mar 17, 2020 at 8:59 PM Long, Jeffrey P. via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I have been working on applications to control a N310 directly using the
> uhd api. As I work with the code I am noticing there is a difference in the
> way you bring up a usrp in what I will call the traditional (legacy)
> uhd::multi_usrp::make() approach vs the newer uhd::device3::make approach
> which seems to only appear in the examples that are specifically rfnoc. I
> realize you can use the legacy approach and examples to run on the N310 but
> as soon as I start modifying the FPGA image and manually take out the DDC
> and DUC for example it does not like that and seg faults. I am guessing it
> is looking for those blocks and doing a whole rfnoc block enumeration thing
> under hood and getting mad? I have been successful using the rfnoc
> (device3) examples on my tweaked FPGA image and I am currently using 3.15
> LTS.
>
>
>
> So I would like to do the following and am asking how best to proceed?
>
>
>
> -I want to remove DDC and DUC blocks from the FPGA build to make room for
> my own stuff.
>
>
>
> -I would like to have full uhd api capability and it appears some things
> are missing like the sensor query that seems to be available only via
> multi_usrp using the traditional approach. If you look at the rfnoc
> examples they have TODOs in those sections.
>
>
>
> I did notice that in the latest master branch there is a mb_controller
> class that looks like it might make that stuff available. It makes sense to
> me that the radio_ctrl would not have that motherboard type stuff but in
> the lastest release branch it only seems to be available via the
> traditional multi-usrp approach.
>
>
>
> So do I need to use the master branch if I want full capability using the
> newer api or is there some other way to get to things like the sensor
> query? Or should I use the rfnoc dev branch? It seems master has more than
> even rfnoc at this point.
>
>
>
> Thanks
>
> Jeff Long
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000057bd2e05a12918e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jeff,</div><div>I have been using UHD with custom =
RFNoC and an N310.=C2=A0 Here are a few remarks:</div><div><ul><li>I am sur=
prised that you can&#39;t run multi_usrp with an N310 once you remove DDCs =
and DUCs.=C2=A0 I thought that multi_usrp had the smarts to essentially ski=
p the DUC and DDC if either the blocks were missing or if the user explicit=
ly=C2=A0specified skip_duc, skip_duc in the make args (see legacy_compat.cp=
p).=C2=A0 But, even if this worked as expected, it still wouldn&#39;t solve=
 your issue of handling custom flow graphs.</li><li>I believe you are corre=
ct in saying that certain functions are not provided outside=C2=A0of multi_=
usrp.=C2=A0 Because of this, I had to create my own class, &#39;my_rfnoc_us=
rp&#39;, which inherited multi_usrp.hpp and I essentially copied the code f=
rom muti_usrp_impl for all functions that didn&#39;t have an equivalent rfn=
oc function. But this was not a trivial task.=C2=A0 If you are only interes=
ted in a few select functions, you could just copy the code from multi_usrp=
_impl for those functions.</li><li>I believe you are correct in saying that=
 &#39;master&#39; changes this architecture.=C2=A0 From what I understand, =
&#39;master&#39; is the better approach in the long run, but I&#39;m just n=
ot sure how stable this new branch is in comparison to 3.15.LTS. And, these=
 changes go along with some pretty major changes on the FPGA side.=C2=A0 So=
, moving to &#39;master&#39; may be a pretty big undertaking.</li><li>You s=
hould not use rfnoc dev branch as this has been dormant for a long time (a =
couple of years)</li></ul><div>Rob</div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 17, 2020=
 at 8:59 PM Long, Jeffrey P. via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_1157109616836196797WordSection1">
<p class=3D"MsoNormal">I have been working on applications to control a N31=
0 directly using the uhd api. As I work with the code I am noticing there i=
s a difference in the way you bring up a usrp in what I will call the tradi=
tional (legacy) uhd::multi_usrp::make()
 approach vs the newer uhd::device3::make approach which seems to only appe=
ar in the examples that are specifically rfnoc. I realize you can use the l=
egacy approach and examples to run on the N310 but as soon as I start modif=
ying the FPGA image and manually
 take out the DDC and DUC for example it does not like that and seg faults.=
 I am guessing it is looking for those blocks and doing a whole rfnoc block=
 enumeration thing under hood and getting mad? I have been successful using=
 the rfnoc (device3) examples on
 my tweaked FPGA image and I am currently using 3.15 LTS.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">So I would like to do the following and am asking ho=
w best to proceed?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">-I want to remove DDC and DUC blocks from the FPGA b=
uild to make room for my own stuff.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">-I would like to have full uhd api capability and it=
 appears some things are missing like the sensor query that seems to be ava=
ilable only via multi_usrp using the traditional approach. If you look at t=
he rfnoc examples they have TODOs
 in those sections.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I did notice that in the latest master branch there =
is a mb_controller class that looks like it might make that stuff available=
. It makes sense to me that the radio_ctrl would not have that motherboard =
type stuff but in the lastest release
 branch it only seems to be available via the traditional multi-usrp approa=
ch.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">So do I need to use the master branch if I want full=
 capability using the newer api or is there some other way to get to things=
 like the sensor query? Or should I use the rfnoc dev branch? It seems mast=
er has more than even rfnoc at this
 point. <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff Long<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000057bd2e05a12918e6--


--===============8207179547040811053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8207179547040811053==--

