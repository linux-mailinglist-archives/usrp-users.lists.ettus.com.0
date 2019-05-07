Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D8916AD6
	for <lists+usrp-users@lfdr.de>; Tue,  7 May 2019 21:03:16 +0200 (CEST)
Received: from [::1] (port=50176 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hO5Mm-0003AP-Oy; Tue, 07 May 2019 15:03:04 -0400
Received: from mail-ot1-f47.google.com ([209.85.210.47]:47017)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <sugandha.gupta@ettus.com>)
 id 1hO5ME-00031T-CH
 for usrp-users@lists.ettus.com; Tue, 07 May 2019 15:03:00 -0400
Received: by mail-ot1-f47.google.com with SMTP id v17so7922979otp.13
 for <usrp-users@lists.ettus.com>; Tue, 07 May 2019 12:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JSyYS7lVMPYSjo9LiLxJuXGNytI5JygSEAj3uoJX8fY=;
 b=b/TVylhbKwxUAfqNkEURkzF/MOLa8Ioo9roGva7CcdYLvW+Hz38RTKL/tOSwKBGhCt
 eMYSYLhoCCcwdwInCksoeq+gwV4O+xyS/6uUihS4n9WCd7t0L9TPUoHGT+jCBc/mBUUU
 zU0RBTdFVkeOxWD2CXSmgCG31JX+nZqDxrhkW7iL04kynOLMWKSbx5ltEbyjsKnNQNDG
 tmLoz5wVMv2rPKnHQRj+NGhADNtvU4A90yqBS4hZHgYl4gSOitbUnJTnyJJJEn1QlUEO
 mvO+SshGhb8Q3ZW8rxaQTp0PNFPbmcskA3b1hUQxoGkTdmbMlV9+a92rOfJT/bE+l8Qz
 J30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JSyYS7lVMPYSjo9LiLxJuXGNytI5JygSEAj3uoJX8fY=;
 b=jFYUYMSe2207owjIPenF8N1vFk3MRtj5oFHdXauAkLHSqjG34wdXqEv2hrFuh/KMHQ
 RFvnt6axPukGuKPb4Gb4icZMIMLOuc4ii8elWhw+QIraR1Ke4RPdbEaQRf0jGCgq7z1z
 pQ/r+x/NYiXHtPxq6v59AYnXf1dCE8Qn72g4ZTnj09LYpp5IZjNStufmel91RCWNexbM
 Geyfpb3O90zbgyZVnmjXaW4SZuejLqg2Qh6EPlMOAAfJ5vqsf7NYJgYuTaSctY7T695L
 lOHOlz7TbgN/bL72eZ4o7gZgz0HCluRJheiCxcgNLa0FZW2b7jeVL/xpaDr56g8o3XBY
 NtIw==
X-Gm-Message-State: APjAAAWrTUnZ03uV4lcb1prXz2V5FA7mNgVIwjgGLNykfn5i739NoVp7
 eiMywCBkSE7hSb6rAMI1qKKq7kb0eXZ+WQb+rbUNz621cXVXBw==
X-Google-Smtp-Source: APXvYqwRYqtoW0/L6574dkLic7tJDSKed4cVIxoyWHecCd7aj1vb3v2hSlqyofwoo8f4GBZXYchWp5s5Es4Qd7uHSDU=
X-Received: by 2002:a05:6830:164e:: with SMTP id
 h14mr8469324otr.321.1557255709406; 
 Tue, 07 May 2019 12:01:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAOR0_ujmQ3poAON=sxihVFa7-+dgOcRdAOWAYuUvzm7MQj5EyQ@mail.gmail.com>
 <aa3eab48687a6c3dc862458dff7643395e62665b@new-postoffice.tpg.com.au>
In-Reply-To: <aa3eab48687a6c3dc862458dff7643395e62665b@new-postoffice.tpg.com.au>
Date: Tue, 7 May 2019 12:01:38 -0700
Message-ID: <CAG_kd15s77ODO84U83rUwRit-Q_cpi2kw+3ouGRDGFsa_neFkA@mail.gmail.com>
To: Chris Gobbett <gobbo@tpg.com.au>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] E320 Auto-Booting function not working?
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
From: Sugandha Gupta via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sugandha Gupta <sugandha.gupta@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4748417562361520446=="
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

--===============4748417562361520446==
Content-Type: multipart/alternative; boundary="000000000000624849058850d963"

--000000000000624849058850d963
Content-Type: text/plain; charset="UTF-8"

Hi Chris

You are right. This seems like a bug on E320. We are working on fixing it
and will have an update for you soon.

Regards
Sugandha

On Mon, May 6, 2019 at 10:12 PM Chris Gobbett via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Following the steps from the E320 getting started guide [1], I'm not
> having any luck with the unit auto booting when power is applied
>
> The command "eeprom-set-flags 0x1" seems to take effect successfully, and
> sets the value of MCU_FLAGS[0] to 0x1 (noting that the default value is
> 0x8, which I'm assuming means auto boot is "off") . This is also verified
> as holding its value between power cycles, by looking at the output of the
> eeprom-dump command.
>
> But... removing power to the unit, then applying power again doesn't
> result in the unit booting by itself.
>
> Anyone had any experience with this and/or able to offer help? I'm
> hesitant to trial-and-error different values into eeprom-set-flags, for
> fear of breaking something... :)
>
> Cheers,
> Chris
>
>
> [1] https://kb.ettus.com/E320_Getting_Started_Guide
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Sugandha Gupta
Senior Software Engineer
Ettus Research, a National Instruments Brand

--000000000000624849058850d963
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Chris</div><div><br></div><div>You are right. This=
 seems like a bug on E320. We are working on fixing it and will have an upd=
ate for you soon. <br></div><div><br></div><div>Regards<br></div><div>Sugan=
dha</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, May 6, 2019 at 10:12 PM Chris Gobbett via USRP-users &lt;<=
a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 style=3D"font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif=
;font-size:12px"><div>Following the steps from the E320 getting started gui=
de [1], I&#39;m not having any luck with the unit auto booting when power i=
s applied</div><div><br></div><div>The command &quot;eeprom-set-flags 0x1&q=
uot; seems to take effect successfully, and sets the value of MCU_FLAGS[0] =
to 0x1 (noting that the default value is 0x8, which I&#39;m assuming means =
auto boot is &quot;off&quot;) . This is also verified as holding its value =
between power cycles, by looking at the output of the eeprom-dump command.<=
br></div><div><br></div><div>But... removing power to the unit, then applyi=
ng power again doesn&#39;t result in the unit booting by itself.<br></div><=
div><br></div><div>Anyone had any experience with this and/or able to offer=
 help? I&#39;m hesitant to trial-and-error different values into eeprom-set=
-flags, for fear of breaking something... :)<br></div><div><br></div><div>C=
heers,</div><div>Chris<br></div><br><div><br></div><div>[1]=C2=A0<a href=3D=
"https://kb.ettus.com/E320_Getting_Started_Guide" target=3D"_blank">https:/=
/kb.ettus.com/E320_Getting_Started_Guide</a></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Sugandha Gupta<=
/div>Senior Software Engineer<div>Ettus Research, a National Instruments Br=
and<br></div></div></div></div></div>

--000000000000624849058850d963--


--===============4748417562361520446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4748417562361520446==--

