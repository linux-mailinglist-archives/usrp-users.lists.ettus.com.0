Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAB823B724
	for <lists+usrp-users@lfdr.de>; Tue,  4 Aug 2020 10:58:19 +0200 (CEST)
Received: from [::1] (port=55186 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2sm1-00050i-W3; Tue, 04 Aug 2020 04:58:17 -0400
Received: from mail-qt1-f176.google.com ([209.85.160.176]:40793)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mdyaaseen1995@gmail.com>)
 id 1k2slx-0004sw-5n
 for usrp-users@lists.ettus.com; Tue, 04 Aug 2020 04:58:13 -0400
Received: by mail-qt1-f176.google.com with SMTP id s16so30317550qtn.7
 for <usrp-users@lists.ettus.com>; Tue, 04 Aug 2020 01:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0eDKSlX1+MInP/Ljv5D0iyeBLnb5qecMDISMp1CjnQk=;
 b=owq/q9VG7uogubsdXfwE0/AEBWU+Y+prk9HedKNz/BKx9R+I3TqcmfHhHcs/ZfUkeW
 1/wi225TuvZvlxUnAwoHg51wv/T4ia767cer4BVYJyFg9ZRi1t/u4Tw/4fO6Tv7GxmTW
 D26c05NI7GTKyDhNkllntDeM/7+32YxkTF3O61seDsaZPcW4WFo5KB6MBDjqaf44hCIb
 vUWsf5z2Xce2J4hhljfDav4kdGcNO29RGYn2OBfEoex5CTq9Q29zsPeYTJab3iTC9pwT
 F6h7TFrIer7Aqj5kM/M5XFfXHa2vpUr+uHI8Dw2lKAMpfK4yoLILbgxduxBAHLpRPwAQ
 ga6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0eDKSlX1+MInP/Ljv5D0iyeBLnb5qecMDISMp1CjnQk=;
 b=KKfNZLka58ELQ5fjtP9kwk8e2mGBWPs4JZBlFNSWTtg8qqRa5Wqtpc7SXZV416mmC3
 3NujTRp7xEhwswLN8Qicl6KF3a2bwQV90tVjEcBIfSgdjFs2Wr7BeHOV+QcgA0bwAiLN
 V8sYtS1nel+lFrkxDSYYLAOYYfcAZNf0i3ahysYVq1BnEKwWJd90wPBmFReend2zbskE
 I0XVG8YohWmbUWw6FjMiUMVvU58PC+VoyrBGWn4Rw9bC7Q4QTO+WBR7H+l2K6m1hHVMR
 bTvgycBHT8LARUzGBNf7epT2l+m9lQvjsnpWiLja5muu9PM28+L5uFM0mxa06Tb+cFRX
 zM/w==
X-Gm-Message-State: AOAM5319LrqE1zQpN5hNOPDwLrivZopXdRkqYwtyR/D4ZH0x+eKwX/uv
 EtUG9/1EUnmwFjHFX5U6u0TGjYHSCItExwzSxNO7ekxf
X-Google-Smtp-Source: ABdhPJz21Umr02ClGoCJa4Epj0/ugkI5NuOrD41uxbCPpf2xsGjOyDPIFxskGjEbmgQ/9c6zaiemZMo1qYs3aC8HAvw=
X-Received: by 2002:ac8:4719:: with SMTP id f25mr21050941qtp.291.1596531447337; 
 Tue, 04 Aug 2020 01:57:27 -0700 (PDT)
MIME-Version: 1.0
References: <MA1PR01MB25886B9CD23670257F42D479904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB25886B9CD23670257F42D479904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Date: Tue, 4 Aug 2020 10:57:15 +0200
Message-ID: <CAN-A3_u_Sh12CTK7Ta+nnDJ03CR+XbcXDPz7AWG+DrOVYnvmRA@mail.gmail.com>
To: "Koyel Das (Vehere)" <koyel.das@vehere.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Automatically stop executing grc after acquiring
 required number of samples
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
From: Mohamed Yaaseen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mohamed Yaaseen <mdyaaseen1995@gmail.com>
Content-Type: multipart/mixed; boundary="===============6843149327674269214=="
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

--===============6843149327674269214==
Content-Type: multipart/alternative; boundary="000000000000ca96da05ac097196"

--000000000000ca96da05ac097196
Content-Type: text/plain; charset="UTF-8"

Hello Koyel,

you can do this by modifying the python script that grc generates.
there will be variable called tb in the python file, which is basically the
top block from the gnuradio

tb.start()


this line will start the flowgraph, once it is started by default the
python code will wait for some keyboard event(in case of no gui) or gui
event (in case if you are use a gui window)
Here is the default code for no gui case

>     try:
>         input('Press Enter to quit: ')
>     except EOFError:
>         pass
>     tb.stop()
>     tb.wait()



you can change this to some like below which,  making the main thread to
end after some fixed time.

    time.sleep(5)
>     tb.stop()
>     tb.wait()
>     sys.exit(0)


You can get number of seconds you want to run the flowgraph from the sample
rate of your usrp and how much total samples you need to capture
Hope this helps !

Regards,
Mohamed Yaaseen


On Tue, 4 Aug 2020 at 10:38, Koyel Das (Vehere) via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> Can grc be made to run for a predefined fixed amount of time and number of
> samples and made to stop automatically after acquiring this many number of
> samples  from usrp? If so what parameters need to be set in usrp source
> block and others if any to serve the purpose?
>
> Regards,
> Koyel
>
> Get Outlook for iOS <https://aka.ms/o0ukef>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ca96da05ac097196
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Koyel,</div><div><br></div><div>you can do this=
 by modifying the python script that grc generates.=C2=A0</div><div>there w=
ill be variable called tb in the python file, which is basically=C2=A0the t=
op block from the gnuradio=C2=A0</div><div><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">tb.start()</blockquote><div><br></div><div>this=
 line will start the flowgraph, once it is started by default the python co=
de will wait for some keyboard event(in case of no gui) or gui event (in ca=
se if you are use a gui window)</div><div>Here is the default code for no g=
ui case</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=C2=A0 =C2=
=A0 try:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 input(&#39;Press Enter to quit: &#3=
9;)<br>=C2=A0 =C2=A0 except EOFError:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 pass<b=
r>=C2=A0 =C2=A0 tb.stop()<br>=C2=A0 =C2=A0 tb.wait()</blockquote><div><br><=
/div><div><br></div><div>you can change this to some like below which,=C2=
=A0 making the main thread to end after some fixed time.</div><div></div><d=
iv><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=C2=A0 =C2=
=A0 time.sleep(5)<br>=C2=A0 =C2=A0 tb.stop()<br>=C2=A0 =C2=A0 tb.wait()<br>=
=C2=A0 =C2=A0 sys.exit(0)</blockquote><div><br></div><div>You can get numbe=
r of seconds you want to run the flowgraph from the sample rate of your usr=
p and how much total samples you need to capture=C2=A0=C2=A0<br></div><div>=
Hope this=C2=A0helps !</div><br clear=3D"all"><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Regards,<di=
v>Mohamed Yaaseen</div><div><br></div></div></div></div></div></div></div><=
/div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, 4 Aug 2020 at 10:38, Koyel Das (Vehere) via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ett=
us.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">



<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Can grc be made to run for a predefined fixed amount of ti=
me and number of samples and made to stop automatically after acquiring thi=
s many number of samples =C2=A0from usrp? If so what parameters need to be =
set in usrp source block and others if
 any to serve the purpose?</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel=C2=A0</div>
<div><br>
</div>
<div id=3D"gmail-m_375400170817579731ms-outlook-mobile-signature">Get <a hr=
ef=3D"https://aka.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ca96da05ac097196--


--===============6843149327674269214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6843149327674269214==--

