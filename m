Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 587971E6337
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2020 16:05:25 +0200 (CEST)
Received: from [::1] (port=60804 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jeJ9t-0001Jh-GY; Thu, 28 May 2020 10:05:21 -0400
Received: from mail-yb1-f172.google.com ([209.85.219.172]:34185)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1jeJ9p-00012J-6n
 for usrp-users@lists.ettus.com; Thu, 28 May 2020 10:05:17 -0400
Received: by mail-yb1-f172.google.com with SMTP id l17so112145ybk.1
 for <usrp-users@lists.ettus.com>; Thu, 28 May 2020 07:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=onfqe1ERsFzulghS80/e9OTn/xHPWYZEVtkqcvW3lu8=;
 b=cg58Ye6kbakZchH976BV9wO+nCQu6UlYI6Ndhe4qeaFqs5IiHjfZ5UUk2/AKNxer+R
 pBKK9ps+MdkIQA+P6sRH/XUVLF3Xj6xwr8gQrLxxHTUJnvrXjVhRYoQAX1U7MWK1RJ4D
 OOM4lTkkP/UxBwFaq2h0l9vjCRFB29jP1LrpRzOU9ip/6MzDlt5EQoC6KLMTxRUwSPjS
 SQmsUYYczdiNdVFcTj2PjNlU0W8qDyqk5nLrSHM4t9C5IrSYtR4pScipufGTNrT3gTAd
 xg2xoEE7GVp2+ibjnLLMZjUjWl6rn3YsZk8UNwFkg+n8aR+kwdIfBOC3GouaTa7kaXLl
 tR7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=onfqe1ERsFzulghS80/e9OTn/xHPWYZEVtkqcvW3lu8=;
 b=EgSBMZpmmDZ1rmHMg8IArMzVa6lBZTefoVKE+VkTEQj8WxgVNiT0VkSvCKE+cBQPXT
 XDd481mgd8IGhs9eiv+kWhW52nBPBn2Qvhe57d6FeRoDyPIhfJ+LGRphxNyR67olIZNh
 9w0YiQR8eq9f+z6KWespIT07f08hf86OMKi6lg0kPLWFXym3hBBfte3Mg2XV3hE9mc9i
 nvRzX9uDNPRm2TBi0NtHfQg68ol9lmCJq4qE0EuVcJB90h33sbtiLyVJfKngwj65iXWh
 uQ8cuwPBl5li8PNX5QAnyT5RqNzHhEw0H8FvbIgmEScw26ReyXoRssrr3zK2NFM8OzEZ
 gSPQ==
X-Gm-Message-State: AOAM533KoR4/+0I3fSKhn6pJp33I4StmkhNP919SG/TLB+yBVzgt2890
 2VZP0fu412X6zGGowuLcsoAm+/547Qnv78XdIHU=
X-Google-Smtp-Source: ABdhPJyhSncjuD6875FoObe+Bwy7g9GjTBeRO24eOAtTv8MA3ZUgvJV4bvS9kRW0FC17mWaw8B3P5NLFhCruA8MUd88=
X-Received: by 2002:a25:ba49:: with SMTP id z9mr5043321ybj.391.1590674676464; 
 Thu, 28 May 2020 07:04:36 -0700 (PDT)
MIME-Version: 1.0
References: <CADrptxVyyurf9m30FocbfK0N+9rtrD_qQvRee8d3_rz9N5r-Hg@mail.gmail.com>
In-Reply-To: <CADrptxVyyurf9m30FocbfK0N+9rtrD_qQvRee8d3_rz9N5r-Hg@mail.gmail.com>
Date: Thu, 28 May 2020 09:04:25 -0500
Message-ID: <CADBWrHgzW-7W_ei87z9oxgKULrxRkAPWFL0Qj3hwg7Kpa4239g@mail.gmail.com>
To: Emil Bjelski <emil.bjelski@gmail.com>
Subject: Re: [USRP-users] RFNoC Replay Bloch timmed commands
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Cc: USRP Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1667992569687716540=="
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

--===============1667992569687716540==
Content-Type: multipart/alternative; boundary="0000000000000b3f7a05a6b5cf65"

--0000000000000b3f7a05a6b5cf65
Content-Type: text/plain; charset="UTF-8"

Tarik,

That KB is current - timed commands were added to the replay block in the
last 6 months.

-Sam

On Thu, May 28, 2020 at 4:52 AM Emil Bjelski via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello All,
>
> I would like to use RFNoC Replay Block with timed commands, in order to
> transmit
> waveform at allocated time slots.
>
> I see relatively new post and Ettus wiki (
> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD
> )
> which mentions that Replay Block can be used with timed commands. (see
> line "Using RFNoC blocks like the Replay Block to transmit phase coherent
> bursts").
>
> In same time I have found an earlier post (
> http://ettus.80997.x6.nabble.com/USRP-users-X310-Replay-Block-and-receiver-timming-td11818.html
> )
> where it is mentioned that Replay Block does not support timed commands.
>
> I am wondering what is current status related to support of timed commands
> with Replay Block?
>
> Kind Regards,
>
> Tarik
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000b3f7a05a6b5cf65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Tarik,<br><div><br></div><div>That KB is current - timed c=
ommands were added to the replay block in the last 6 months.</div><div><br>=
</div><div>-Sam</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, May 28, 2020 at 4:52 AM Emil Bjelski via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Hello All,<div><br></div><div>I would like to use R=
FNoC Replay Block=C2=A0with timed commands, in order to transmit=C2=A0</div=
><div>waveform at allocated=C2=A0time slots.=C2=A0</div><div><br></div><div=
>I see relatively new post and Ettus wiki (<a href=3D"https://kb.ettus.com/=
Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD" target=3D"_blank">ht=
tps://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD</a=
>)</div><div>which mentions that Replay Block can be used with timed comman=
ds. (see line &quot;<span style=3D"color:rgb(0,0,0);font-family:&quot;Lucid=
a Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif;font-size:14px">U=
sing RFNoC blocks like the Replay Block to transmit phase coherent bursts&q=
uot;).</span></div><div><span style=3D"color:rgb(0,0,0);font-family:&quot;L=
ucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif;font-size:14p=
x"><br></span></div><div><span style=3D"color:rgb(0,0,0);font-family:&quot;=
Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-serif;font-size:14=
px">In same time I have found an earlier post (</span><a href=3D"http://ett=
us.80997.x6.nabble.com/USRP-users-X310-Replay-Block-and-receiver-timming-td=
11818.html" target=3D"_blank">http://ettus.80997.x6.nabble.com/USRP-users-X=
310-Replay-Block-and-receiver-timming-td11818.html</a>)</div><div>where it =
is mentioned that Replay Block does not support timed commands.</div><div><=
br></div><div>I am wondering what is current status related=C2=A0to support=
 of timed commands with Replay Block?</div><div><br></div><div>Kind Regards=
,</div><div><br></div><div>Tarik</div><div><span style=3D"color:rgb(0,0,0);=
font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans-=
serif;font-size:14px"><br></span></div><div><span style=3D"color:rgb(0,0,0)=
;font-family:&quot;Lucida Sans Unicode&quot;,&quot;Lucida Grande&quot;,sans=
-serif;font-size:14px"><br></span></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000b3f7a05a6b5cf65--


--===============1667992569687716540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1667992569687716540==--

