Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6379B18BBD
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 16:29:46 +0200 (CEST)
Received: from [::1] (port=55188 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOk3N-0001zf-7q; Thu, 09 May 2019 10:29:45 -0400
Received: from mail-ot1-f43.google.com ([209.85.210.43]:38433)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <rkossler@nd.edu>) id 1hOk2o-0001qB-GO
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 10:29:40 -0400
Received: by mail-ot1-f43.google.com with SMTP id s19so2464472otq.5
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 07:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s6uyKMqQd5XUR4afV7tWC0ijONsc4kJZhxRfwWWfOVw=;
 b=OZAsckG56lIZHafd7ixstaou1Gmx4KE9cH2FMBlFoCe4mOmx5LV5AQ67PNEB1jd+b7
 NJJy/4M3FK71AdRUbrKaogqfc6+vuaXaiuxCy4AwroQ7I/daXm4vDQvsXIDgHpcgZsou
 zKIUpBymt+ZnNQy0KPJlr7SPSXFvoxzJA50qq6eIxuts1rMMd/IImwoYy0BFts7+dIpM
 G3pcPCQmx2CADfxLerbErK1JB6KsMPK43Evsm4V8QEeXAu0E+YmGoiUFEe0DzJT/nNd+
 zIeFgoBnozB2EFABoggSKLFNDYvm8CXBlsliR3ytR2V8mM4gBLOwvIX8uySy9TikzwPV
 H25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s6uyKMqQd5XUR4afV7tWC0ijONsc4kJZhxRfwWWfOVw=;
 b=BiMFcbbK0dHvA8aWadiNkunRr2AcTO/mZC8SAiLBqXxKV8iw58mUwNN7LCVXhZD7zz
 gE4Miou3O2P6CARaXf1IDqtRjIPXhNZDJ82eMSWvzioypn8I/EYvVT2+K+is9nX4TgQN
 Ibd+OopDeHnL5Sz8mqbjdfEUV4aYGec9vW2utgoi9I+k/Ssy3MGpe8gHLMWIIuxJDjtU
 SV1EWR4fjeE03sc3oc/0bmthd+nqU+fkzqxcFbbPxXeJ80doQSJChm1P4Rf8Kp49oROv
 ZZvt5uO6MmrCjoJdRK+WVBDGA5GYJf2iaPW4+q9VUwvAmncv5qtJf2fCslULWcbiIhfa
 fL4g==
X-Gm-Message-State: APjAAAWQyXYqOiNInsqnsMKyGRByS7A+X/VtKr5HVGfk94b/uUYIHSy2
 DM13wf7H8npY5WKaSOhG/aSQpn0cCmqOK79PBrqzEw==
X-Google-Smtp-Source: APXvYqwvll4JZksDpq93Mfkvi/QVvAX9hz8fMWezRd0Vxv3QE4dM78G80xQSwKnrnwPM0NPbwITQFen+RRIhTHiOoZ0=
X-Received: by 2002:a9d:5e07:: with SMTP id d7mr2563312oti.21.1557412109657;
 Thu, 09 May 2019 07:28:29 -0700 (PDT)
MIME-Version: 1.0
References: <467ab47ac30943458c17957c0f605687@TELMBXC13BA020.telecomitalia.local>
 <5CD4326A.1050705@gmail.com>
In-Reply-To: <5CD4326A.1050705@gmail.com>
Date: Thu, 9 May 2019 10:28:18 -0400
Message-ID: <CAB__hTQAH2mNnE=ZR4RtGOZGbOyEg9HJJYjsXyPhnZypQyYXyQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Configuration in sysctl.conf
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7232811675420018656=="
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

--===============7232811675420018656==
Content-Type: multipart/related; boundary="00000000000091111d0588754366"

--00000000000091111d0588754366
Content-Type: multipart/alternative; boundary="00000000000091111b0588754365"

--00000000000091111b0588754365
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have you done the same for "rmem_max"?   Perhaps the continued warning
messages are related to this rather than wmem_max?

Rob

On Thu, May 9, 2019 at 10:01 AM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 05/09/2019 08:25 AM, Disco Daniele via USRP-users wrote:
>
> Hi!
>
> I=E2=80=99m using a X310 on a linux box UBUNTU 18.04
>
>
>
> Executing the command =E2=80=9Cuhd_usrp_probe=E2=80=9D
>
> I obtain a lot of [WARNING][UDP] related to the dimension of the send
> buffer
>
> Then there is the sentence:
>
> Please run: sudo sysctl -w net.core.wmem_max=3D24862979
>
>
>
> So I=E2=80=99ve written in the file /etc/sysctl.conf, at the end
>
> net.core.wmem_max=3D24862979
>
>
>
> I restarted the host but rerunning uhd_usrp_probe I reobtain the same
> warning.
>
>
>
> Could you help me?
>
>
>
> PS: Now I=E2=80=99m using a 10GB Ethernet board plugged in the workstatio=
n, using
> a couple of fiber optics between the X310 and the work station
>
>
>
> Thank you
>
> Perhaps you have a syntax error in your sysctl file?
>
>
>
>
> _____________________________________________
>
> [image: logo1]
>
> Direzione e Coordinamento Vivendi SA
>
>
> *Daniele Disco*
> *CT.TA.EI*
>
>
> Via Reiss Romoli, 274 =E2=80=93 10148 Torino
> tel . +39 011 228 7271
> cell. +39 331 600 1113
>
> Fax. +39 06 4186 5196
> Tim Official: *Facebook* <https://www.facebook.com/TimOfficialPage> -
> *Twitter* <https://twitter.com/tim_official>
> *www.tim.it* <http://www.tim.it/>
>
>
>
>
> Questo messaggio e i suoi allegati sono indirizzati esclusivamente alle
> persone indicate. La diffusione, copia o qualsiasi altra azione derivante
> dalla conoscenza di queste informazioni sono rigorosamente vietate. Qualo=
ra
> abbiate ricevuto questo documento per errore siete cortesemente pregati d=
i
> darne immediata comunicazione al mittente e di provvedere alla sua
> distruzione, Grazie.
>
> * This e-mail and any attachments is confidential and may contain
> privileged information intended for the addressee(s) only. Dissemination,
> copying, printing or use by anybody else is unauthorised. If you are not
> the intended recipient, please delete this message and any attachments an=
d
> advise the sender by return e-mail, Thanks. *
>
> *Rispetta l'ambiente. Non stampare questa mail se non =C3=A8 necessario.*
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000091111b0588754365
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Have you done the same for &quot;rmem_max=
&quot;?=C2=A0 =C2=A0Perhaps the continued warning messages are related to t=
his rather than wmem_max?<div><br></div><div>Rob</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 9, 2019 =
at 10:01 AM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_-8380757819678932710moz-cite-prefix">On 05/09/201=
9 08:25 AM, Disco Daniele
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
     =20
      <div class=3D"gmail-m_-8380757819678932710WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hi!<u></u><u></u></span=
></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I=E2=80=99m using a X31=
0 on a
            linux box UBUNTU 18.04<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Executing the command
            =E2=80=9Cuhd_usrp_probe=E2=80=9D<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I obtain a lot of
            [WARNING][UDP] related to the dimension of the send buffer<u></=
u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Then there is the
            sentence:<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Please run: sudo sysctl
            -w net.core.wmem_max=3D24862979<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">So I=E2=80=99ve written=
 in the
            file /etc/sysctl.conf, at the end<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">net.core.wmem_max=3D248=
62979<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I restarted the host bu=
t
            rerunning uhd_usrp_probe I reobtain the same warning.<u></u><u>=
</u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Could you help me?<u></=
u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">PS: Now I=E2=80=99m usi=
ng a 10GB
            Ethernet board plugged in the workstation, using a couple of
            fiber optics between the X310 and the work station<u></u><u></u=
></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you</span></p>
      </div>
    </blockquote>
    Perhaps you have a syntax error in your sysctl file?<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"gmail-m_-8380757819678932710WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u><u></u></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:H=
elvetica,sans-serif;color:rgb(1,33,105)">__________________________________=
___________</span><b><span style=3D"font-size:10pt;font-family:Helvetica,sa=
ns-serif;color:rgb(218,41,28)"><u></u><u></u></span></b></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:H=
elvetica,sans-serif;color:rgb(1,33,105)" lang=3D"EN-US"><img style=3D"width=
: 0.5937in; height: 0.1875in;" id=3D"gmail-m_-8380757819678932710Immagine_x=
0020_5" src=3D"cid:16a9cfdf1cbc204bfcc1" alt=3D"logo1" height=3D"18" width=
=3D"57"></span><span style=3D"font-size:7.5pt;font-family:Helvetica,sans-se=
rif;color:rgb(1,33,105)"><u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:H=
elvetica,sans-serif;color:rgb(1,33,105)">Direzione
            e Coordinamento Vivendi SA<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><b><span style=3D"font-size:7.5pt;font-famil=
y:Verdana,sans-serif"><br>
            </span></b><b><span style=3D"font-size:7.5pt;font-family:Helvet=
ica,sans-serif;color:rgb(1,33,105)">Daniele
              Disco</span></b><span style=3D"font-size:7.5pt;font-family:He=
lvetica,sans-serif;color:rgb(1,33,105)"><br>
            <b>CT.TA.EI</b><u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:H=
elvetica,sans-serif;color:rgb(1,33,105)"><br>
            Via Reiss Romoli, 274 =E2=80=93 10148 Torino<br>
            tel . </span><span style=3D"font-size:7.5pt;font-family:Helveti=
ca,sans-serif;color:rgb(1,33,105)" lang=3D"EN-US">+39 011 228 7271<br>
            cell. +39 331 600 1113<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:H=
elvetica,sans-serif;color:rgb(1,33,105)" lang=3D"EN-US">Fax. +39 06 4186 51=
96<br>
            Tim Official: <a href=3D"https://www.facebook.com/TimOfficialPa=
ge" target=3D"_blank">
              <b><span style=3D"color:rgb(1,33,105)">Facebook</span></b></a=
> - <a href=3D"https://twitter.com/tim_official" target=3D"_blank">
              <b><span style=3D"color:rgb(1,33,105)">Twitter</span></b></a>=
<br>
            <a href=3D"http://www.tim.it/" target=3D"_blank"><b><span style=
=3D"color:rgb(1,33,105)">www.tim.it</span></b></a></span><span lang=3D"EN-U=
S"><u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></s=
pan></p>
      </div>
      <table style=3D"width:600px">
        <tbody>
          <tr>
            <td style=3D"width:585px;font-family:Verdana;font-size:7.5pt;co=
lor:rgb(0,0,0);text-align:justify" width=3D"395"> Questo messaggio e i suoi=
 allegati sono
              indirizzati esclusivamente alle persone indicate. La
              diffusione, copia o qualsiasi altra azione derivante dalla
              conoscenza di queste informazioni sono rigorosamente
              vietate. Qualora abbiate ricevuto questo documento per
              errore siete cortesemente pregati di darne immediata
              comunicazione al mittente e di provvedere alla sua
              distruzione, Grazie. <br>
              <br>
              <i> This e-mail and any attachments is confidential and
                may contain privileged information intended for the
                addressee(s) only. Dissemination, copying, printing or
                use by anybody else is unauthorised. If you are not the
                intended recipient, please delete this message and any
                attachments and advise the sender by return e-mail,
                Thanks. </i> <br>
              <br>
              <b>Rispetta l&#39;ambiente. Non stampare questa mail se non =
=C3=A8
                necessario.</b> </td>
          </tr>
        </tbody>
      </table>
      <br>
      <fieldset class=3D"gmail-m_-8380757819678932710mimeAttachmentHeader">=
</fieldset>
      <br>
      <pre>_______________________________________________
USRP-users mailing list
<a class=3D"gmail-m_-8380757819678932710moz-txt-link-abbreviated" href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a>
<a class=3D"gmail-m_-8380757819678932710moz-txt-link-freetext" href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a>
</pre>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000091111b0588754365--
--00000000000091111d0588754366
Content-Type: image/jpeg; name=noname
Content-Disposition: inline; filename=noname
Content-Transfer-Encoding: base64
Content-ID: <16a9cfdf1cbc204bfcc1>
X-Attachment-Id: 16a9cfdf1cbc204bfcc1

/9j/4AAQSkZJRgABAQEAYABgAAD/4QPARXhpZgAATU0AKgAAAAgADwD+AAQAAAABAAAAAAEAAAQA
AAABAAADMwEBAAQAAAABAAABzAECAAMAAAADAAAAwgEDAAMAAAABAAUAAAEGAAMAAAABAAIAAAER
AAQAAABcAAAAyAEVAAMAAAABAAMAAAEWAAQAAAABAAAABQEXAAQAAABcAAACOAEaAAUAAAABAAAD
qAEbAAUAAAABAAADsAEcAAMAAAABAAEAAAEoAAMAAAABAAIAAAE9AAMAAAABAAIAAAAAAAAACAAI
AAgAAAAIAAADGQAABaQAAAfvAAAKlAAADVcAAA9QAAARSQAAFAYAABdXAAAalAAAHgkAACE5AAAj
cAAAJaYAAChhAAArbAAALaUAADADAAAzjgAANEsAADUIAAA1xQAANoIAADc/AAA3/AAAOLkAADl2
AAA6MwAAOvAAADutAAA8agAAPScAAD3kAAA+oQAAP14AAEAbAABA2AAAQZUAAEJSAABDDwAAQ8wA
AESJAABFRgAARgMAAEbAAABHfQAASDoAAEj3AABJtAAASnEAAEsuAABL6wAATKgAAE1lAABOIgAA
Tt8AAE+cAABQWQAAURYAAFHTAABSkAAAU00AAFQKAABUxwAAVYQAAFZBAABW/gAAV7sAAFh4AABZ
NQAAWfIAAFqvAABbbAAAXCkAAFzmAABdowAAXmAAAF8dAABf2gAAYJcAAGFUAABiEQAAYs4AAGOL
AABkSAAAZQUAAGXCAABmfwAAZzwAAGf5AABotgAAAxEAAAKLAAACSwAAAqUAAALDAAAB+QAAAfkA
AAK9AAADUQAAAz0AAAN1AAADMAAAAjcAAAI2AAACuwAAAwsAAAI5AAACXgAAA4sAAAC9AAAAvQAA
AL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAA
vQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9
AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0A
AAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAA
AL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAAAvQAAAL0AAAC9AAF3
AAAAA+gAAXcAAAAD6P/bAEMAAgEBAgEBAgICAgICAgIDBQMDAwMDBgQEAwUHBgcHBwYHBwgJCwkI
CAoIBwcKDQoKCwwMDAwHCQ4PDQwOCwwMDP/bAEMBAgICAwMDBgMDBgwIBwgMDAwMDAwMDAwMDAwM
DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDP/AABEIABIAOQMBIgACEQEDEQH/
xAAfAAABBQEBAQEBAQAAAAAAAAAAAQIDBAUGBwgJCgv/xAC1EAACAQMDAgQDBQUEBAAAAX0BAgMA
BBEFEiExQQYTUWEHInEUMoGRoQgjQrHBFVLR8CQzYnKCCQoWFxgZGiUmJygpKjQ1Njc4OTpDREVG
R0hJSlNUVVZXWFlaY2RlZmdoaWpzdHV2d3h5eoOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0
tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4eLj5OXm5+jp6vHy8/T19vf4+fr/xAAfAQADAQEBAQEB
AQEBAAAAAAAAAQIDBAUGBwgJCgv/xAC1EQACAQIEBAMEBwUEBAABAncAAQIDEQQFITEGEkFRB2Fx
EyIygQgUQpGhscEJIzNS8BVictEKFiQ04SXxFxgZGiYnKCkqNTY3ODk6Q0RFRkdISUpTVFVWV1hZ
WmNkZWZnaGlqc3R1dnd4eXqCg4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TF
xsfIycrS09TV1tfY2dri4+Tl5ufo6ery8/T19vf4+fr/2gAMAwEAAhEDEQA/APZvGX7JHwf8Y/GH
WYF/bw1iDV9X124iXT1u53eKeW5YC34uQGKu2zgAccAdKufG3/gmr4D/AGbvGUXh7x5+274m8K63
PZpfpZX8txHK0DvIiSAfavulopAD/sGucg/an/ZPb9qpNPj/AGbfEMHiD/hNDaJfvqhjWO8/tAoJ
zHn5QJPn2dhxXt3/AAWM+Pf7P3wy/a70/Tfil8F9Y+IXiZ/Cdlcxapa6kbeOK0a7vljg2Z6q6TNn
v5g9K+R9nh3SnU9y6a6ztr313P7K/tXiSlmmByyH1pQq0pS5fY4LnfKlZw93l5V15nzWtY900H9j
Cx/aZ/4JU+H/AIV+Dvjp4i1CwuTHNafEPT5pZby8EOotcOoInV9oZWgx5vyqmOcYr8xv2Zf+CfXj
P9o7/gor8WvgJJ+0H8UtIt/htaXFxFraaneyyX5iubeDDQ/awEyJieGP3RX7Hf8ABNzxZ4Q8b/sS
eANW8BeFLvwR4SvbWd9P0W5YtJZr9qmDksfvB5A8gb+ISA96+E/+CZ0Mq/8ABw1+1S3kzBBpl/lz
GwXnUrHbyRjnBx64OOlfrvCGa4jD5ZiYUpJKNNSjonaV4K6um9uj/M/ifxCwEavEMniFLmdeopXf
LLebtJQagpX35dL6LQm13XPEXgj/AIOUPg94MHizxRd6JZeEfss1o+q3Is70x6Df/vJLfzDGzM6L
Icg/MA2cgGvl/wDYc/bt8Wfs7/8ABZvW/wDhIfFPirUPAPizxzqvg/U4dQ1e5urKza5vZVs5FSWQ
xxmOdYhkAYiaTHAxX0/8Vo5T/wAHVHwwPkz7P+EcnYv5TbAP7C1IZ3YxjOBnPU4618x/s5/sMap+
35rX7bHgvQRbWfi+w8ZW2s+HbnUGltbaK7i1O/3o8oRmUSQPIuVBKs0bYO3B+wwcsIsN/taXJLD0
k3ppzTkub5Xv30PhsQsS66WHbvGtUaWuvLFO3z27XNX/AILEftyeKvin/wAFVND8N+FvE3ijSPCP
w117S/DbDS9VubK3u9RN1FJdlxDIquy7liwwyPLcdDX7yV+A37cn7Evin9jH4bfs5Wfju5tta+Jf
jz4rX3iXxTf2DyXcNxdT3dtsUSmNGc7cuSVB3TOAMAV+/NfL8WfVlhMHDC25Yqcbr7XLJJy+bu16
nvcPfWPrGJlib8zcXb+W62+XXzGOP3dIg4/E0UV8SfUCH73+fSlHKA9zRRUoQDiMfWhh8v1oopRL
BO/tRRRVxJe5/9k=
--00000000000091111d0588754366--


--===============7232811675420018656==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7232811675420018656==--

