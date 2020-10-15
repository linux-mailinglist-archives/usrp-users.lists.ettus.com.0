Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E9B28F209
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 14:26:47 +0200 (CEST)
Received: from [::1] (port=39284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT2LG-00076J-5z; Thu, 15 Oct 2020 08:26:46 -0400
Received: from mail-ed1-f48.google.com ([209.85.208.48]:43989)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kT2LC-0006zD-NJ
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 08:26:42 -0400
Received: by mail-ed1-f48.google.com with SMTP id dn5so2858945edb.10
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 05:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=txL0x6pBUVhArOF8PXX1R7o2nG675x5Ni/wn7GShZVg=;
 b=pJFjteEsFifWmzHwjV3DfGFb96v1nMcECUt6miE96SkB7Gu2wVIZqnCGOrUQUqTwUy
 PkP9aW4XEzAj1CSSzhEVIZx9cWX+Mu8o00L519/UGrToE7UBOvo7VNiAIwU4C8NjTH9i
 Osxo4/qtqM/zYgh+MByepaqSUS+GMpFhvMkgbyGzwEPaeXebIRXT2xgHPEhMejwnHNip
 BJitS8yxyYlVnfU3+qInGAKoOh8p0jOQ9Dz3hZs9uoHWbGS2l5BNv8Y+IWoyBruB0c/c
 xADLCcnymhMdHOV4Tad5hUhS/2ToJ+dGt6Kz5jCTudJ9nVsnDNA4yL3FrkEi8J1tQ08h
 Y/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=txL0x6pBUVhArOF8PXX1R7o2nG675x5Ni/wn7GShZVg=;
 b=kg3+97qvepzjrda+Gz7bjNkcWMHt2ez+agXmrwlUhFKeNIkjmuKtbz3GazUpNhGX4/
 XPLR6nGRF0jsCd+GygrdUeDnPicoVtX8BKvMC5vnF9Z0Ax1v/48DPoV+TxMDfd6c6rRy
 e9bPNbJUiI+U+6d5Y+miLPPf7XmzIQxOZm+NmDrlRSl+IWRtqCLL35yHccQwn+PjzVfO
 LjFZ8A6uPNsVRFVyHF7RNk1FdJWG8NEKaqnNMNxTiA6jxrguI168egH4eYwIC5DIpDuD
 jOJXUo+5D2jZTbDZB1Sv8zKZiYfCfdkESutbXyDsYrVqWEmmf70gkFvrX4/6WEumt2eK
 fvbQ==
X-Gm-Message-State: AOAM533onsf5Zr9g9R5OPsrl3RYPUd5ZhAJoSromr0ICAlibBhhAP/ea
 3kqfRpn8jMaUx4L8FMMHTBkIlMIZVouK6SKjjcZH1mFf
X-Google-Smtp-Source: ABdhPJxHS7BMO3WvW8YU3dJsvWpI6w7o0ydcoC+Xjuv3WsaQVPP9nRNv/5FjnhxZhk2XRRAN9tFLmHrCNx7aTU1nKEI=
X-Received: by 2002:a50:d4dc:: with SMTP id e28mr4228074edj.137.1602764761655; 
 Thu, 15 Oct 2020 05:26:01 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.46.1601308803.20957.usrp-users_lists.ettus.com@lists.ettus.com>
 <CABV9QyLGYgXZQANBaLZB967VEfRTOBovZ=2po6qrrm_QCKdJkg@mail.gmail.com>
In-Reply-To: <CABV9QyLGYgXZQANBaLZB967VEfRTOBovZ=2po6qrrm_QCKdJkg@mail.gmail.com>
Date: Thu, 15 Oct 2020 14:25:50 +0200
Message-ID: <CAFOi1A6Kgq0fZEy4Pn5NaLMcHL0MDZtau8C3KwYomX1+Ne=fcA@mail.gmail.com>
To: Yu-Hsuan Chen <shinge.chen@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Segmentation fault when calling
 usrp->get_device()->get_tree()->access<bool>
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Content-Type: multipart/mixed; boundary="===============3828215462825435347=="
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

--===============3828215462825435347==
Content-Type: multipart/alternative; boundary="0000000000004707dd05b1b4c0c7"

--0000000000004707dd05b1b4c0c7
Content-Type: text/plain; charset="UTF-8"

Question: Can you run set_tx_lo_export_enabled(true, "LO_OUT_0", 0) on your
usrp object, or does that also fail?

--M

On Mon, Sep 28, 2020 at 11:36 PM Yu-Hsuan Chen via USRP-users <
usrp-users@lists.ettus.com> wrote:

>
>> Date: Mon, 28 Sep 2020 10:38:26 -0400
>> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
>> To: usrp-users@lists.ettus.com
>> Subject: Re: [USRP-users] Segmentation fault when calling
>>         usrp->get_device()->get_tree()->access<bool>
>> Message-ID: <5F71F562.2030202@gmail.com>
>> Content-Type: text/plain; charset=windows-1252; format=flowed
>>
>> On 09/28/2020 03:45 AM, Yu-Hsuan Chen via USRP-users wrote:
>> > Hi,
>> >
>> > I try to build LO distribution using N321/N320 and follow the
>> > https://kb.ettus.com/USRP_N320/N321_LO_Distribution
>> >
>> > But, I got the Segmentation fault at
>> >
>> usrp->get_device()->get_tree()->access<bool>("mboards/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export").set(true);
>> >
>> > I am using the linux; GNU C++ version 7.5.0; Boost_106501;
>> > UHD_4.0.0.HEAD-0-g90ce6062.
>> >
>> > Please help me to figure it out.
>> >
>> > Thanks,
>> > YH
>> >
>> Is your usrp object valid at the point you make this call?
>>
>>
> Yes, I can set frequency, rate and gain using usrp object before this
> call. Only get the fault after making this call.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000004707dd05b1b4c0c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Question: Can you run set_tx_lo_export_enabled(true, =
&quot;LO_OUT_0&quot;, 0) on your usrp object, or does that also fail?</div>=
<div><br></div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 28, 2020 at 11:36 PM Yu-Hsuan =
Chen via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-=
users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><br>
Date: Mon, 28 Sep 2020 10:38:26 -0400<br>
From: &quot;Marcus D. Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gmail=
.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a><br>
Subject: Re: [USRP-users] Segmentation fault when calling<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp-&gt;get_device()-&gt;get_tree()-&gt;access=
&lt;bool&gt;<br>
Message-ID: &lt;<a href=3D"mailto:5F71F562.2030202@gmail.com" target=3D"_bl=
ank">5F71F562.2030202@gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed<br>
<br>
On 09/28/2020 03:45 AM, Yu-Hsuan Chen via USRP-users wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I try to build LO distribution using N321/N320 and follow the <br>
&gt; <a href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distribution" rel=3D=
"noreferrer" target=3D"_blank">https://kb.ettus.com/USRP_N320/N321_LO_Distr=
ibution</a><br>
&gt;<br>
&gt; But, I got the Segmentation fault at<br>
&gt; usrp-&gt;get_device()-&gt;get_tree()-&gt;access&lt;bool&gt;(&quot;mboa=
rds/0/dboards/A/tx_frontends/0/los/lo1/lo_distribution/LO_OUT_0/export&quot=
;).set(true);<br>
&gt;<br>
&gt; I am using the linux; GNU C++ version 7.5.0; Boost_106501; <br>
&gt; UHD_4.0.0.HEAD-0-g90ce6062.<br>
&gt;<br>
&gt; Please help me to figure it out.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; YH<br>
&gt;<br>
Is your usrp object valid at the point you make this call?<br><br></blockqu=
ote><div><br></div><div>Yes, I can set frequency, rate and gain using usrp =
object before this call. Only get the fault after making this call.</div><d=
iv><br></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000004707dd05b1b4c0c7--


--===============3828215462825435347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3828215462825435347==--

