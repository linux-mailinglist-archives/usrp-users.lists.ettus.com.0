Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 174CE282D50
	for <lists+usrp-users@lfdr.de>; Sun,  4 Oct 2020 21:39:33 +0200 (CEST)
Received: from [::1] (port=33126 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kP9r0-0003Ei-95; Sun, 04 Oct 2020 15:39:30 -0400
Received: from mail-ed1-f53.google.com ([209.85.208.53]:45754)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <danielozer22@gmail.com>)
 id 1kP9qw-00037G-CT
 for usrp-users@lists.ettus.com; Sun, 04 Oct 2020 15:39:26 -0400
Received: by mail-ed1-f53.google.com with SMTP id l17so7098993edq.12
 for <usrp-users@lists.ettus.com>; Sun, 04 Oct 2020 12:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=byQghgste7f0Q4ypGoPDnsX6DnRfKFYEyuKWppbKOcA=;
 b=t5nx1zxL12mVmWEABWiuOD8JuV757VJWKwzKBVGs4RNqz/oliSP9j3ZM6uJ9trDZh0
 ug/KRZlt6vu51qXXolrLac2hdM0BjTauQkwFsq1DKXYbh6vv1w8MAGwQRXTaTWDh7PxE
 FuPo94D88Yewp1GN6YRZHK7Oi+S7T+D0K0NJo1wpD8O0zSj01qsAdsoSZvj+V2WqyU/n
 kEMIiwt6QuHyh5ghWT1Af3VGzb3Y8QwV+erl3h4GIN2YAzjdQdBnHVcgH4Rh+pH6VCAJ
 /aFQHWwWUv2CPmhgXI8IwzNYXcfjkm7MSvGQ2P1t3c2dS6roTUa4St9lgBlzx70Te6Tk
 DsmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=byQghgste7f0Q4ypGoPDnsX6DnRfKFYEyuKWppbKOcA=;
 b=O4YKM69iqKF00bdhyjbvdJ+FINjY4u/7bGYN6RpFUU/vpG7SxSdi50ZlmiAMReVe0A
 FgK3LI0BWgCvNum6iJr98hf0+MivwpNUs+lbL1KjfpougZ42PTjugwjg2NPp6qobnUYm
 bR7I6ZLrXZT2Bu6NJp4S60YozY9GJLopSzFXONpg+IvaQzcrMsIjm2WeQFZ5Y6e3I0c7
 rmfDPlt8istB51GCUlCgfN4/EwKuziCHknnqKbfGDDVHxe0AjGoIpE3X8xDYcTvwI2C2
 UvxzTSgQLntWy3SxgFbozwFPb5mtBhISQ8J2PxhcEEaE726Jo/CzA9AIOMYBTrsL5+Bg
 fg+g==
X-Gm-Message-State: AOAM531z69PNHb9GHEPKIz3KJi84aQj57vsjRZ/IftByZQgp65/VOIzS
 BzFf8W+cSE5hZKei5kK6fx9BrdOBGZ/UhieAd1IGz62+3uI=
X-Google-Smtp-Source: ABdhPJxWHZyqdBlF3PANZ5F8SJ+vLl82Sy6iQrf85yB/mdcw+x3OvOIGzjNmcFZVhL42ZX+BEcFbFfdK9lvszbOAJfM=
X-Received: by 2002:a50:f389:: with SMTP id g9mr5620779edm.367.1601840325331; 
 Sun, 04 Oct 2020 12:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAE_Rk54ZCgr=aPjNnUZ6wrygAMZWO5D=wUgqc0zoH7cEQRmO+A@mail.gmail.com>
 <CAL7q81vffhBJgyj=QbB73ir7ogQn_w_A1tVP=i487eNa5rR3kA@mail.gmail.com>
In-Reply-To: <CAL7q81vffhBJgyj=QbB73ir7ogQn_w_A1tVP=i487eNa5rR3kA@mail.gmail.com>
Date: Sun, 4 Oct 2020 22:38:24 +0300
Message-ID: <CAE_Rk56Y+ujnMsL0EcaZcQFUOKbNXoKNWjDmUg1-oRDzTXvFkg@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] reading from ddr3 - high latency
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
From: Daniel Ozer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Ozer <danielozer22@gmail.com>
Content-Type: multipart/mixed; boundary="===============8339675908274064166=="
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

--===============8339675908274064166==
Content-Type: multipart/alternative; boundary="000000000000940fe005b0dd83ea"

--000000000000940fe005b0dd83ea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok , I will look it up .
But its seems that there is a fifo that waits until there is a full burst
and just then release data from the dma- master .
If i'm right, where can i find it ?

=E2=80=AB=D7=91=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=90=D7=
=B3, 4 =D7=91=D7=90=D7=95=D7=A7=D7=B3 2020 =D7=91-20:01 =D7=9E=D7=90=D7=AA =
=E2=80=AAJonathon Pendlum=E2=80=AC=E2=80=8F <=E2=80=AA
jonathon.pendlum@ettus.com=E2=80=AC=E2=80=8F>:=E2=80=AC

> Hi Daniel,
>
> The latency will be dominated by Xilinx's MIG IP that interfaces with the
> DDR RAM. You can try looking at Xilinx's documentation and see what
> parameters you can change to improve latency.
>
> Jonathon
>
> On Sat, Oct 3, 2020 at 9:10 AM Daniel Ozer via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi everyone,
>> I'm working on usrp x310 .
>> I create my own version of the replay block .
>> I almost didn't change anything in the 2 state  machines in the
>> axi_replay.v .
>> everything worked fine  but then i saw in the chipscope that my replay
>> block got data after 110 clks. (although the read ctrl ports indicate th=
at
>> the ddr start processing my read request )
>> Is there any reason it takes 110clks to get the first data from a burst =
?
>> How can I lower this high latency ?
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000940fe005b0dd83ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"ltr">Ok , I will look it up .</div><div dir=3D=
"ltr">But its seems that there is a fifo that waits until=C2=A0there is a f=
ull burst and just then release data from the dma- master .</div><div dir=
=3D"ltr">If i&#39;m right,=C2=A0where can i find it ?</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"rtl" class=3D"gmail_attr">=E2=80=AB=D7=91=
=D7=AA=D7=90=D7=A8=D7=99=D7=9A =D7=99=D7=95=D7=9D =D7=90=D7=B3, 4 =D7=91=D7=
=90=D7=95=D7=A7=D7=B3 2020 =D7=91-20:01 =D7=9E=D7=90=D7=AA =E2=80=AAJonatho=
n Pendlum=E2=80=AC=E2=80=8F &lt;=E2=80=AA<a href=3D"mailto:jonathon.pendlum=
@ettus.com">jonathon.pendlum@ettus.com</a>=E2=80=AC=E2=80=8F&gt;:=E2=80=AC<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Hi Daniel,<div><br></div><div>The latency will be dominated by Xilinx&#39;=
s MIG IP that interfaces with the DDR RAM. You can try looking at Xilinx&#3=
9;s documentation and see what parameters you can change to improve latency=
.</div><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 3, 2020 at 9:10 AM Dan=
iel Ozer via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"rtl"><div style=3D"d=
irection:ltr">Hi everyone,</div><div style=3D"direction:ltr">I&#39;m workin=
g=C2=A0on usrp x310 .</div><div dir=3D"ltr">I create my own version of the =
replay block .</div><div dir=3D"ltr">I almost didn&#39;t=C2=A0change anythi=
ng in the 2 state=C2=A0 machines in the axi_replay.v .</div><div dir=3D"ltr=
">everything=C2=A0worked fine=C2=A0 but then i saw in the chipscope that my=
 replay block got data after 110 clks. (although the read ctrl ports indica=
te that the ddr start processing my read request )</div><div dir=3D"ltr">Is=
 there any reason it takes 110clks to get the first data from a burst ?</di=
v><div dir=3D"ltr">How can I lower this high latency=C2=A0?</div><br><div s=
tyle=3D"direction:ltr">=C2=A0=C2=A0</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000940fe005b0dd83ea--


--===============8339675908274064166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8339675908274064166==--

