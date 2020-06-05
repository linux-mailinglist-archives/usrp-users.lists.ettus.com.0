Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F421EFBBB
	for <lists+usrp-users@lfdr.de>; Fri,  5 Jun 2020 16:45:28 +0200 (CEST)
Received: from [::1] (port=34764 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jhDb3-0004bp-Ol; Fri, 05 Jun 2020 10:45:25 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:43802)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carlosruiznaranjo@gmail.com>)
 id 1jhDb0-0004U2-AN
 for usrp-users@lists.ettus.com; Fri, 05 Jun 2020 10:45:22 -0400
Received: by mail-io1-f54.google.com with SMTP id u13so4357232iol.10
 for <usrp-users@lists.ettus.com>; Fri, 05 Jun 2020 07:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=tkwGkrNnIvHxgiHWsntZbj6I7BLKGFSSs1K2nvrSqUI=;
 b=eL0iCcyFAxcS7+7A1kYFJaJOTVe667GbmNQZLiwwcQaaEo5Wt3o1l2amrOni835Q6F
 xl3vF81AnUecr6jOa4pJAkzJglWBClFaEHmTzHIbucqfpgYFQTfqQDkAeExbLG4ZLoWO
 Xmt7VM/W2DkCBh5Jqz+C+R9s1vDafkbW2EWa4R8agmr+fXU37FYoRwgYv2RCsS1OD6z5
 HUhJ4P5AuyVR7dppfhBzdMuOwJGSYtdhbUSdR9yfqFT+nqywPBdbMKnDUz0QcK80LeIu
 UGOhpOUjiB6AbpESJ8cZaYHHz8vA/QGxhzNH9fq7mMeNrUwvkwPVllr5F8P3lnkHjaXS
 DFWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=tkwGkrNnIvHxgiHWsntZbj6I7BLKGFSSs1K2nvrSqUI=;
 b=WB6Ahw6r/G7A5Secfnf0Faox8gQrKR5aJFbD7jvmB1H1S6SqleIekIQ1ItH3WcEycw
 FxfJZPLt7/8Z/p+D4kC7FIQeblifFU7fCe/1gzai3Gauu6d35y0GFBUEkf6lyKZJcr2W
 8kh25pGnJCPISVxnOgVf4C8aFTmaHGyjj9tbs+cSBy1l9TUYFNtFQQklu3XK6O/DhNLR
 t2lyyUif+q0FgJs7f6ApK25CHgdDf7gJWjiWcoZqPxK4okeZdfk146TjJslKtWEjMcAm
 iNyUHAYMHgF9m2H99/myFk5Ei1YN6jTZQH51Lug9uJ0iQqIsiom4UZPAqh3ga8hHLZEZ
 odAw==
X-Gm-Message-State: AOAM530+cs894/4oL90SCBXVhXkR7o6TAwjdxvv8/rwAy2z4HHaxPvai
 d3oBuN10iN7Edm8awDF74xkSMseFSZubeWOKwf4=
X-Google-Smtp-Source: ABdhPJzjtDNZRa6bImFD8XQoDdCNv+lI0OkpuDWrKtAQbI+LXMpCxmGgwGkUPmuaZ/kFHWi2KJ9GSoMmf+YxUw+/4iw=
X-Received: by 2002:a02:2c6:: with SMTP id 189mr9159696jau.115.1591368280742; 
 Fri, 05 Jun 2020 07:44:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPhuvqJaWPwE2SwaEfLK3wzRqn9VgT7MEiWO0_ed3t7dRw@mail.gmail.com>
 <CAB__hTT6z9ovRS-fiubqUiE=1kH1+Fe=HULvdCJV61kYj=ncpg@mail.gmail.com>
In-Reply-To: <CAB__hTT6z9ovRS-fiubqUiE=1kH1+Fe=HULvdCJV61kYj=ncpg@mail.gmail.com>
Date: Fri, 5 Jun 2020 16:44:29 +0200
Message-ID: <CAP2eGPi5hF3suBnROzk1r-dV5FJ2DoUZmwbvUbtfNODMRek9Fw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>, 
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] timeouts problems with custom DUC multi channel
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
From: Carlos Alberto Ruiz Naranjo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Content-Type: multipart/mixed; boundary="===============4563552335077793334=="
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

--===============4563552335077793334==
Content-Type: multipart/alternative; boundary="00000000000014aec905a7574dbd"

--00000000000014aec905a7574dbd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you Rob :)

I have fixed the problem with the adder between axi_rate_change dds_timed.

El jue., 4 jun. 2020 a las 0:13, Rob Kossler (<rkossler@nd.edu>) escribi=C3=
=B3:

> I think that it is dependent on tvalid because both "a" and "b" need to b=
e
> consumed on the same sample.  So, the code does not assert tready for
> either input until the tvalid is asserted for both inputs.
>
> On Wed, Jun 3, 2020 at 6:06 AM Carlos Alberto Ruiz Naranjo via USRP-users=
 <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>>
>> I have modified the DUC block to do it 2inputs-1outputs. The output is
>> duc_0 + duc_1.
>>
>> input_0  ---> duc_0 --->
>>                                         cadd ---> output
>> input_1  ---> duc_1 --->
>>
>> Apparently it works fine, but after 1 second I have timeout problems and
>> the output is weird.
>>
>> cadd is the Ettus complex adder (
>> https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/=
cadd.v)
>> 3.15LTS
>>
>> I think that it due the tvalid/tready. If I use (
>> https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/=
cadd.v#L23
>> ):
>>
>>    assign int_tvalid =3D a_tvalid & b_tvalid;
>> *   assign a_tready =3D int_tvalid & int_tready;*
>>    assign b_tready =3D a_tready;
>>
>> a_tready and b_tready are always '0' and I haven't any output. But if I
>> use:
>>
>>    assign int_tvalid =3D a_tvalid & b_tvalid;
>> *   assign a_tready =3D int_tready; //Independent tready*
>>    assign b_tready =3D a_tready;
>>
>> I have the timeout problems. Why is tready dependent of tvalid?
>>
>> Thank you.
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000014aec905a7574dbd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Rob :)<br></div><div><br></div><div>I have =
fixed the problem with the adder between <span class=3D"gmail-pl-ent">axi_r=
ate_change <span class=3D"gmail-pl-ent">dds_timed.</span></span></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El ju=
e., 4 jun. 2020 a las 0:13, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.=
edu">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">I think that it is dependent =
on tvalid because both &quot;a&quot; and &quot;b&quot; need to be consumed =
on the same sample.=C2=A0 So, the code does not assert tready for either in=
put until the tvalid is asserted for both inputs.</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 3, 2020 at 6:0=
6 AM Carlos Alberto Ruiz Naranjo via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">Hi,<br><br>I have modified the DUC block to do it 2inputs-1outputs=
. The output is duc_0 + duc_1.<br><br>input_0 =C2=A0---&gt; duc_0 ---&gt;<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 cadd ---&gt; output<br>input_1 =C2=A0---&gt; du=
c_1 ---&gt;<br><br>Apparently it works fine, but after 1 second I have time=
out problems and the output is weird. <br><br>cadd is the Ettus complex add=
er (<a href=3D"https://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp=
3/lib/rfnoc/cadd.v" target=3D"_blank">https://github.com/EttusResearch/fpga=
/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/cadd.v</a>) 3.15LTS<br><br>I think that =
it due the tvalid/tready. If I use (<a href=3D"https://github.com/EttusRese=
arch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/cadd.v#L23" target=3D"_blank">h=
ttps://github.com/EttusResearch/fpga/blob/UHD-3.15.LTS/usrp3/lib/rfnoc/cadd=
.v#L23</a>):<br><br>=C2=A0 =C2=A0assign int_tvalid =3D a_tvalid &amp; b_tva=
lid;<br><b>=C2=A0 =C2=A0assign a_tready =3D int_tvalid &amp; int_tready;</b=
><br>=C2=A0 =C2=A0assign b_tready =3D a_tready;<br>=C2=A0 =C2=A0<br>a_tread=
y and b_tready are always &#39;0&#39; and I haven&#39;t any output. But if =
I use:<br><br>=C2=A0 =C2=A0assign int_tvalid =3D a_tvalid &amp; b_tvalid;<b=
r><b>=C2=A0 =C2=A0assign a_tready =3D int_tready; //Independent tready</b><=
br>=C2=A0 =C2=A0assign b_tready =3D a_tready;<br>=C2=A0 =C2=A0<br>I have th=
e timeout problems. Why is tready dependent of tvalid?<br><br>Thank you.</d=
iv>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000014aec905a7574dbd--


--===============4563552335077793334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4563552335077793334==--

