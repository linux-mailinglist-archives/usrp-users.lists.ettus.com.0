Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 209B51B6B69
	for <lists+usrp-users@lfdr.de>; Fri, 24 Apr 2020 04:36:00 +0200 (CEST)
Received: from [::1] (port=41332 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jRoC6-0006TN-Mj; Thu, 23 Apr 2020 22:35:58 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:42926)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jRoBI-00060r-UN
 for usrp-users@lists.ettus.com; Thu, 23 Apr 2020 22:35:09 -0400
Received: by mail-ot1-f54.google.com with SMTP id m18so9905474otq.9
 for <usrp-users@lists.ettus.com>; Thu, 23 Apr 2020 19:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xAyj+i0HVWHUUlGsnSrM/jc1orILwSwPwRIZAsGoxbg=;
 b=UAshU+t6KFOkXn+l0znibrTcUzOz7vytnG8ucEucV7fWEyfzwqb2634pDWRmuBVY9E
 w36VN4x1SshvYDuDjP+OIPh4HykFdtJN0qBHfb8Ra0xUDB5t4OEqx4BOlU2F9ojaUxWA
 TV2X9zEmKy/aI4NzwJHWHhbHCr90JRfyDfaK9xgAuoh+OZTnSJK5BrmcQSU+MOiKCzwR
 hOxtXssqzejveHI3HApySaOVghbBgYVoYPXSuEOIJgeinImDbeMPi+6SmS4q5UL0eFFa
 PnOu/YfM9vO0KbbLtiyUQ8jOg/yLkm9sdto/dyixANUVJ9lMqlfsvd7fShMMahmkPB2j
 hw4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xAyj+i0HVWHUUlGsnSrM/jc1orILwSwPwRIZAsGoxbg=;
 b=Yn599hENHdJNlPL/FVpZ2EaH+/lLY5XzGzbEY53BmYkHUAFXd9g3eYBLmDouf6TPpo
 hP6LtbucplieFuNWlBhBmYMd9CouFt7heO0o+HkDsjZde0MEw9QtVh/WYVPBLxMg8gps
 kV2zJRCyBYDjs6gP1sMXYiAYmiBBQGBag6WekkHuAn/FC5aoE3WQpz1xctof7HO5LF63
 X6O9HFh2PYDAr4wegoHrIbaXyzJnW6sww/RUAa7Y2XHvcXafqQxIOwYZjRAauX3q8CoM
 3asEjwOADTnXUVRTLM+huLRJ6GBf0x/ICoA5RPDH+RYKt7nOlfu3Hi5vZw0aP83ajnn/
 6k5Q==
X-Gm-Message-State: AGi0PuY5wAIKDla6b+KkuzYTzi7q4dha1cl0dyPkwPcC7+w40q4+qNwf
 UQpQVRFTMhe1PXEi3vmzQjID0vae0YKO5AbeYb0/g8unYAY=
X-Google-Smtp-Source: APiQypJALn8nw9TTIwmSLszcZT8sMY34dGWh2WHiw327Y5qz0do7r5cO3IRkoOrrpE1f0wu2OuU/zP3KT03xUD1Tfxo=
X-Received: by 2002:a9d:748e:: with SMTP id t14mr5852264otk.302.1587695668073; 
 Thu, 23 Apr 2020 19:34:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRkiAjJ4H7ehSMHfjsO3NDLpghzjJpnZMZw6-MTVYp8hw@mail.gmail.com>
 <CAFche=gmhz5khOrpufGLN2hW1+SvhW3KA7nfR0mna570BOZs3Q@mail.gmail.com>
In-Reply-To: <CAFche=gmhz5khOrpufGLN2hW1+SvhW3KA7nfR0mna570BOZs3Q@mail.gmail.com>
Date: Thu, 23 Apr 2020 22:33:57 -0400
Message-ID: <CAB__hTQkmbb9CR4RCQ4Mhq_YP-VRFP9Tubd3EWJuQkXxN7Er3Q@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Subject: Re: [USRP-users] using 'replay' block with 'duc'
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6911218804898318227=="
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

--===============6911218804898318227==
Content-Type: multipart/alternative; boundary="0000000000004eed5c05a400349e"

--0000000000004eed5c05a400349e
Content-Type: text/plain; charset="UTF-8"

Great. I forgot to mention that I was using an n310.

On Thu, Apr 23, 2020 at 10:18 PM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Rob,
>
> Thanks for the example! I'd take a look to see if I can reproduce the
> issue and figure out what's going on. I've been working recently on the
> Replay block, so I'm very interested to understand what's going on.
>
> Thanks,
>
> Wade
>
> On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I am having an issue with UHD 3.15.LTS using the replay block.  When I
>> play out my previously stored samples the first time, everything works
>> fine.  But after stopping the first time, if I try to start playing out
>> again, I get a whole bunch of 'Lates' and no RF output.
>>
>> In order to duplicate the problem with an Ettus example, I modified
>> 'replay_samples_from_file' to add a loop and command prompt so that the
>> user could hit <enter> to start playing out while still using <ctrl-c> to
>> stop.  Unfortunately for me, this worked fine and did not show the problem.
>>
>> Next, I further modified the example to place a DUC block in between the
>> Replay block and the Radio.  Now it duplicates the issue perfectly
>> (modified example attached).
>>
>> So, perhaps I need to clear the DUC in some way when stopping the
>> streaming??  But if so, I'm not really sure how to do so.
>>
>> Thanks.
>> Rob
>>
> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000004eed5c05a400349e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><div dir=3D"auto">Great. I forgot to mention that I was=
 using an n310.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Apr 23, 2020 at 10:18 PM Wade Fife &lt;<a href=
=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><br=
></div><div>Thanks for the example! I&#39;d take a look to see if I can rep=
roduce the issue and figure out what&#39;s going on. I&#39;ve been working =
recently on the Replay block, so I&#39;m very interested to understand what=
&#39;s going on.<br></div><div><br></div><div>Thanks,</div><div><br></div><=
div>Wade<br></div></div><br><div class=3D"gmail_quote"></div><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at =
1:36 PM Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></=
div></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"></blockquote></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I am having a=
n issue with UHD 3.15.LTS using the replay block.=C2=A0 When I play out my =
previously stored samples the first time, everything works fine.=C2=A0 But =
after stopping the first time, if I try to start playing out again, I get a=
 whole bunch of &#39;Lates&#39; and no RF output.</div><div><br></div><div>=
In order to duplicate the problem with an Ettus example, I modified &#39;re=
play_samples_from_file&#39; to add a loop and command prompt so that the us=
er could hit &lt;enter&gt; to start playing out while still using &lt;ctrl-=
c&gt; to stop.=C2=A0 Unfortunately for me, this worked fine and did not sho=
w the problem.</div><div><br></div><div>Next, I further modified=C2=A0the e=
xample to place a DUC block in between the Replay block and the Radio.=C2=
=A0 Now it duplicates the issue perfectly (modified example attached).</div=
><div><br></div><div>So, perhaps I need to clear the DUC in some way when s=
topping the streaming??=C2=A0 But if so, I&#39;m not really sure how to do =
so.</div><div><br></div><div>Thanks.</div><div>Rob</div></div></blockquote>=
</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--0000000000004eed5c05a400349e--


--===============6911218804898318227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6911218804898318227==--

