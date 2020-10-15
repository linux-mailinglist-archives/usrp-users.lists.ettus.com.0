Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E5728FA13
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 22:23:54 +0200 (CEST)
Received: from [::1] (port=42900 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT9my-0007nE-LL; Thu, 15 Oct 2020 16:23:52 -0400
Received: from mail-ua1-f49.google.com ([209.85.222.49]:39392)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kT9mv-0007gT-1a
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 16:23:49 -0400
Received: by mail-ua1-f49.google.com with SMTP id t15so1203770ual.6
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 13:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HhANh/idkcD3mfdI+OxHL/xAl94ATcuX3Jz5H2efb48=;
 b=cTItcJ3ERoWU20/R1cAotHI1KzqNY0sksOTE+VhYMMA8KQU08eW2NjdT75Y1+ja3OE
 hODqOsaIBtsXtJFMM4zfwIaVPAMNSBOd4m10P3xsU1yAHTFuxNCI9uU+4NmKz+PY+WWq
 xaNNT1/s55bOWHFelq16zRanm7rg/Ii5oUBC+5Z9EOVdGkQUkvZqTGVsvKy50SJw9ERG
 K7hQxzRIxmFgjADm1ZKvnxT3zoPWJtthq8Swc0vWhM8ZUHF3rw74qubDGtfWmR+760us
 pT7gC0IkozbZR///XWiZfwqXO73F72h1Qpk6VzV/ILofQimsXIMTwSvw0ev65G+flYum
 1M5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HhANh/idkcD3mfdI+OxHL/xAl94ATcuX3Jz5H2efb48=;
 b=epjma4yRZ5EWA/PDb+8CiK0zW3YV8Y3bUmDa5ifh1cCw+CnucIJDadvnVzG8NDvIxt
 lvuz2Sk7WGezeATiKCscMHA7ms9xHgcoObeAMuQhEgXpXue+auxt+HqdLmtafqc20BR+
 fsfHcCATI7Lg8iNQ4pcDta9Ofyi9GJzFioGru64a0Xu6l+K0GBed/KMYMlr6UmBKjVFL
 r0m/oSzOSnTWTDzMVzqTrEsrl44G09mH3WlNeIZWjrCXZrG4xsRhizuZsiK2ryAGR5UM
 eRI2oGEjRj7Zhb/t/HcDCS7y5rpI6953U1oNYVwj4n91jjIDJGxIoyYrVAgpDjSI6L/0
 w2XA==
X-Gm-Message-State: AOAM532cvrDB9qNVbtkjCEnNJgDjE4nQPAuzhAI5s0mjP154v/Iv2kOV
 NqalvJhCxgCog0Sy7oz0yC0GzZhWqEr2MUmAWWMaZKXg
X-Google-Smtp-Source: ABdhPJyHLFeBRtsXZZl6DWk7WF7NCQlckiZPL25N432NGFbot0gE2pISdF5JEMpry0DuOQNNNmvzYOnaijLggDfL3xE=
X-Received: by 2002:ab0:907:: with SMTP id w7mr335035uag.100.1602793388449;
 Thu, 15 Oct 2020 13:23:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTQ3aXadTX5KELksuongMR4QJchXS9UdxSs9cNyBBRdTg@mail.gmail.com>
 <CAL7q81sXeHHHSHF+S9hdHk=827igYxQPiY7D070=Dr1yW4GXJg@mail.gmail.com>
 <CAB__hTRk1GcRNph1bW-kbPq9jy9K-8tAY=WRr62KePK03PAgig@mail.gmail.com>
In-Reply-To: <CAB__hTRk1GcRNph1bW-kbPq9jy9K-8tAY=WRr62KePK03PAgig@mail.gmail.com>
Date: Thu, 15 Oct 2020 16:22:32 -0400
Message-ID: <CAL7q81sHKB02b7e6VNg9OTY543V+6BLRF-_baoUPUzdzpLMtrA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Failure: ERROR:add_1 must be in range [-1, DEPTH-1]
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============4109615571261428630=="
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

--===============4109615571261428630==
Content-Type: multipart/alternative; boundary="000000000000913aa305b1bb6a7d"

--000000000000913aa305b1bb6a7d
Content-Type: text/plain; charset="UTF-8"

The issue could be with the Window block then. Maybe it isn't getting
properly initialized or something changed from RFNoC 3 to RFNoC 4.

On Thu, Oct 15, 2020 at 3:44 PM Rob Kossler <rkossler@nd.edu> wrote:

> OK. I'll check again.  One thing that's weird is that if I comment out
> either the Window or the FFT (and insert appropriate assign statements to
> replace the commented item), I don't get the error.  The error only occurs
> if both are in place.
> Rob
>
> On Thu, Oct 15, 2020 at 3:42 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hey Rob,
>>
>> I've ran into that issue when simulating Xilinx IP that use DSP48s. From
>> what I can tell, they don't handle X and U signal states properly. Try
>> double checking that all your signals are all properly driven.
>>
>> Jonathon
>>
>> On Thu, Oct 15, 2020, 15:08 Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> I am getting this error (from the subject line) in a custom block I
>>> created that is effectively just the combination of a window block and a
>>> xilinx fft ip core. I am using UHD-4.0 (and Vivado 2019.1).
>>>
>>> After searching the user's list, I found some old posts from Jonathan
>>> Pendlum that indicated that this was a known issue related to the Xilinx
>>> FFT IP core.  The solution in the previous posts was to copy a "wave.do"
>>> file from the Ettus in-tree FFT tb folder.  I didn't find such a file in
>>> UHD-4.0 and so I'm wondering if there is a solution that works for UHD-4.0.
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000913aa305b1bb6a7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The issue could be with the Window block then. Maybe it is=
n&#39;t getting properly initialized or something changed from RFNoC 3 to R=
FNoC 4.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Oct 15, 2020 at 3:44 PM Rob Kossler &lt;<a href=3D"mailto:rk=
ossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">OK. I&#39;ll check again.=C2=
=A0 One thing that&#39;s weird is that if I comment out either the Window o=
r the FFT (and insert appropriate assign statements to replace the commente=
d item), I don&#39;t get the error.=C2=A0 The error only occurs if both are=
 in place.<div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Oct 15, 2020 at 3:42 PM Jonathon Pendlum &l=
t;<a href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">jonathon.=
pendlum@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"auto">Hey Rob,<div dir=3D"auto"><br></div><div=
 dir=3D"auto">I&#39;ve ran into that issue when simulating Xilinx IP that u=
se DSP48s. From what I can tell, they don&#39;t handle X and U signal state=
s properly. Try double checking that all your signals are all properly driv=
en.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Jonathon</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Oct 15, 2020, 15:08 Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">Hi,<br><div>I am getting this error (from the subject line) in a =
custom block I created that is effectively just the combination of a window=
 block and a xilinx fft ip core. I am using UHD-4.0 (and Vivado 2019.1).=C2=
=A0 </div><div><br></div><div>After searching the user&#39;s list, I found =
some old posts from Jonathan Pendlum that indicated that this was a known i=
ssue related to the Xilinx FFT IP core.=C2=A0 The solution in the previous =
posts was to copy a &quot;wave.do&quot; file from the Ettus in-tree FFT tb =
folder.=C2=A0 I didn&#39;t find such a file in UHD-4.0 and so I&#39;m wonde=
ring if there is a solution that works for UHD-4.0.</div><div>Rob</div></di=
v>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000913aa305b1bb6a7d--


--===============4109615571261428630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4109615571261428630==--

