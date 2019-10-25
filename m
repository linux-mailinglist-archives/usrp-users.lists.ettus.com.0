Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D000E524F
	for <lists+usrp-users@lfdr.de>; Fri, 25 Oct 2019 19:30:04 +0200 (CEST)
Received: from [::1] (port=53906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iO3PT-00007y-Ir; Fri, 25 Oct 2019 13:29:59 -0400
Received: from mail-lj1-f177.google.com ([209.85.208.177]:34081)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <m2wagner@eng.ucsd.edu>)
 id 1iO3PO-0008VD-EW
 for usrp-users@lists.ettus.com; Fri, 25 Oct 2019 13:29:54 -0400
Received: by mail-lj1-f177.google.com with SMTP id 139so3395690ljf.1
 for <usrp-users@lists.ettus.com>; Fri, 25 Oct 2019 10:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TwU000bRsFE7XaIgQS7h1WdoiYLFRoDxAb+yKqldHzs=;
 b=LwDP4Z5zQ20v4MZnGQSNPB6+w73ohcit5Rl0cxzF0hYTJCx9flac7c8GQB5Eqp94WH
 xfJAMn1WEqLOPbPib1LzuLzFeHG9x19BsbL2uzNMcOdExJ+gpGVjfBgAsN99dpOwzkuv
 TwhCJv6FTVqdoDebCCQ9tYSkXICsi+DBHPilk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TwU000bRsFE7XaIgQS7h1WdoiYLFRoDxAb+yKqldHzs=;
 b=KT4j6r+w2GnmVvooScSJTq/BX9kPmIPBK1twKbX6Orju81HzE3rjGzFqVctX7htB7B
 yuqea1TLjKcMXtFOT4zKb1103/pu/k8G+tsMUaUD4XnlN5Nc7iEYSLZLD0zhm93GOcZK
 Bnxmsq1SvgswqOiasP+eGDXfwB+jndhcricZHnNl+s9h+MRjxe88j4dGonYRsCwqDlm+
 ETeSEkNsDAdKswR/tzbpxBpUWuoaEGKVlbrXGxo3B5Ck4y4i1W//isoiXuoWmtAz6B/0
 agsNC52fcS/ppeXCQar2kP4XYqPkK76bBE2Jo6c/H+YLO41ewLxtGdyUrduMALUn+l40
 fpXA==
X-Gm-Message-State: APjAAAXkcRGcOv8565G4KiVuyD8EXi6/PWW5rJ9XiCPGwLWtfA/MKGts
 BtIjx0ZKePjGa/J/tcl1JI2rEZu5MI6cJ3t80Q8fLg==
X-Google-Smtp-Source: APXvYqwlnntbWKO35OGw7rfvRAL4s6vA+I8caSrNq64zkwv8jX4Rztc6Pu0ksImrxP53yl+jMiVZfDIqpaeh0LhS3xo=
X-Received: by 2002:a2e:350f:: with SMTP id z15mr3365565ljz.185.1572024552874; 
 Fri, 25 Oct 2019 10:29:12 -0700 (PDT)
MIME-Version: 1.0
References: <CALLKLANcwo6NGC8TcKbWc_Un1qSgRx9qUkTcm1FkxBRc05qEcQ@mail.gmail.com>
 <CAB__hTQx+ZyX3pG5Xbj8YrHoPBcUFu1Wg1ih9xFpbNgyRXDv3A@mail.gmail.com>
In-Reply-To: <CAB__hTQx+ZyX3pG5Xbj8YrHoPBcUFu1Wg1ih9xFpbNgyRXDv3A@mail.gmail.com>
Date: Fri, 25 Oct 2019 10:29:05 -0700
Message-ID: <CALLKLAPtrHU5O5k_bn3GRJyc4wB2oMCTXg=rjgqS8r+XQz_dOg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] Error when trying to run USRP N310s using external
 LO
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
From: Mark Wagner via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mark Wagner <m2wagner@eng.ucsd.edu>
Cc: Usrp Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4879433115480452261=="
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

--===============4879433115480452261==
Content-Type: multipart/alternative; boundary="0000000000000d74ee0595bf7da7"

--0000000000000d74ee0595bf7da7
Content-Type: text/plain; charset="UTF-8"

Unfortunately not,

I'm trying to get the N310s to operate at 584.2 MHz, so my LO is going at
1168.4 MHz (there's a note saying the external LO should supply twice the
desired center frequency). I would have thought there's no need to specify
the center frequency when running with the LO switched to external, but
when I run the setup without specifying the center frequency it doesn't
seem to work.

-Mark

On Fri, Oct 25, 2019 at 6:27 AM Rob Kossler <rkossler@nd.edu> wrote:

> The N310 data sheet (in one of the footnotes) indicates that external LO
> is limited to the frequency range 300-4000 MHz.  Are you trying to operate
> below 300MHz?
> Rob
>
> On Thu, Oct 24, 2019 at 3:42 PM Mark Wagner via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi all,
>>
>> I'm currently trying to run a set of USRP N310s all using the same
>> external LO, but I seem to be getting this error
>>
>> "[ERROR] [0/Radio_1] RX LO lowband does not support setting source to
>> external"
>>
>> which will repeat for all the radios. I tried looking online for the
>> source of the error but no dice. It seems like the radios are ignoring the
>> LO I'm giving them and using their internal ones instead. Any thoughts?
>>
>> -Mark
>>
>> --
>> Mark Wagner
>> University of California San Diego
>> Electrical and Computer Engineering
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

-- 
Mark Wagner
University of California San Diego
Electrical and Computer Engineering

--0000000000000d74ee0595bf7da7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Unfortunately not,<div><br></div><div>I&#39;m trying to ge=
t the N310s to operate at 584.2 MHz, so my LO is going at 1168.4 MHz (there=
&#39;s a note saying the external LO should supply twice the desired center=
 frequency). I would have thought there&#39;s no need to specify the center=
 frequency when running with the LO switched to external, but when I run th=
e setup without specifying=C2=A0the center frequency it doesn&#39;t seem to=
 work.</div><div><br></div><div>-Mark</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 25, 2019 at 6:27 AM =
Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">The N310 data sheet (in o=
ne of the footnotes) indicates that external LO is limited to the frequency=
 range 300-4000 MHz.=C2=A0 Are you trying to operate below 300MHz?<div>Rob<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Thu, Oct 24, 2019 at 3:42 PM Mark Wagner via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;bor=
der-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr">Hi all,<div><br></div><div>I&#39;m currently trying to run a set o=
f USRP N310s all using the same external LO, but I seem to be getting this =
error=C2=A0</div><div>=C2=A0<br></div><div><div>&quot;[ERROR] [0/Radio_1] R=
X LO lowband does not support setting source to external&quot;</div><div><b=
r></div><div>which will repeat for all the radios. I tried looking online f=
or the source of the error but no dice. It seems like the radios are ignori=
ng the LO I&#39;m giving them and using their internal ones instead. Any th=
oughts?</div></div><div><br></div><div>-Mark</div><div><br></div>-- <br><di=
v dir=3D"ltr"><div dir=3D"ltr"><div><div>Mark Wagner<br></div>University of=
 California San Diego<br></div>Electrical and Computer Engineering<br>=C2=
=A0<br></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div>Mark Wagner<br></div>=
University of California San Diego<br></div>Electrical and Computer Enginee=
ring<br>=C2=A0<br></div></div>

--0000000000000d74ee0595bf7da7--


--===============4879433115480452261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4879433115480452261==--

