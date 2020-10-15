Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA2528F9A9
	for <lists+usrp-users@lfdr.de>; Thu, 15 Oct 2020 21:45:39 +0200 (CEST)
Received: from [::1] (port=42640 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kT9Bx-0005BW-TG; Thu, 15 Oct 2020 15:45:37 -0400
Received: from mail-ot1-f44.google.com ([209.85.210.44]:37661)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kT9Bt-00054F-Qy
 for usrp-users@lists.ettus.com; Thu, 15 Oct 2020 15:45:33 -0400
Received: by mail-ot1-f44.google.com with SMTP id m22so314969ots.4
 for <usrp-users@lists.ettus.com>; Thu, 15 Oct 2020 12:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AtNzR5ZRs25fFD71pe5PFf5jA2krzDi8kQz4GKRcqXs=;
 b=EVmJnXuOOaewc0v6k58aQEAP8drJoMEuAmr1zaJ+ZNgTtHaamnveFPNqXaYMUhnBFB
 mQ5KpLn1NRobL61irl1uUI5Cz4GIMkIKkNAnynriMtXeTtDJTEBCkN7C3YfXQ+l6bQEw
 DaSVBn1i+o2rlByd2RXjwD9z5WQQN7Fiy751dF6m+ea2NPOe1oSP50YAkMJs78SxMmtN
 lnQ+d2tzWqKZTJwbxg5106/qtHB1SK0HxG4odf1YV005B7VpbWUFBDBj4GFnFhLI6xoq
 WaDcC1jzdcpTwtzMTcVtrbuype5dCkl8Y4weDy4sTndI/FQmiafjpxech4Vey5fKcloR
 usxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AtNzR5ZRs25fFD71pe5PFf5jA2krzDi8kQz4GKRcqXs=;
 b=cvTsyUPy/YXymcP/httHgT/KIMdqZtB6BFh+2lE3TTBU+d+4NiSyF7JLhdeI1DLKlX
 g2MzST+dX+6DCe/IHVQocpcZ0pucuF7R8PV6zbZNKdr+D6RwQG/w+BZKCggsEW1pNT9h
 z3bvtnRa3htrMCVMEm46FEfFYFYkMAsTx9TOcI2DJAab/M7uMQD3rQTlKuUtSnTU5aT/
 9oAKaTMl6d2ZsjDTlTjRFqI/ECzFRtSMo9MvEaqj5bPr35rGJp0oZm/KUDBy9kmH5ZSW
 P6iKPSHCNZovzTGXJjDDid5xbnjO5NpUITjR4qwxvNSrZIFQxYTblnu7xuGs/G3ET4Lj
 hngQ==
X-Gm-Message-State: AOAM533zNXM5HxiJxRs0rb3cenaH7vTzBAQLWDBLDpsX3uGIUtXmDm92
 jkw7GXRfQ8MGUZHrrO19VmYaZnm+7O22E5vomx5xLw==
X-Google-Smtp-Source: ABdhPJy+NCZVe9GzK+kgPU9pC3adU5ZQq4cBxSO/bUqViLfqN3KGMuo2nNMm3gCWwURsPWh+GK0XFiUjFyUMTwD323c=
X-Received: by 2002:a05:6830:1282:: with SMTP id
 z2mr32751otp.301.1602791093039; 
 Thu, 15 Oct 2020 12:44:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTTQ3aXadTX5KELksuongMR4QJchXS9UdxSs9cNyBBRdTg@mail.gmail.com>
 <CAL7q81sXeHHHSHF+S9hdHk=827igYxQPiY7D070=Dr1yW4GXJg@mail.gmail.com>
In-Reply-To: <CAL7q81sXeHHHSHF+S9hdHk=827igYxQPiY7D070=Dr1yW4GXJg@mail.gmail.com>
Date: Thu, 15 Oct 2020 15:44:42 -0400
Message-ID: <CAB__hTRk1GcRNph1bW-kbPq9jy9K-8tAY=WRr62KePK03PAgig@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5617859279749773410=="
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

--===============5617859279749773410==
Content-Type: multipart/alternative; boundary="000000000000c0470705b1bae1c7"

--000000000000c0470705b1bae1c7
Content-Type: text/plain; charset="UTF-8"

OK. I'll check again.  One thing that's weird is that if I comment out
either the Window or the FFT (and insert appropriate assign statements to
replace the commented item), I don't get the error.  The error only occurs
if both are in place.
Rob

On Thu, Oct 15, 2020 at 3:42 PM Jonathon Pendlum <jonathon.pendlum@ettus.com>
wrote:

> Hey Rob,
>
> I've ran into that issue when simulating Xilinx IP that use DSP48s. From
> what I can tell, they don't handle X and U signal states properly. Try
> double checking that all your signals are all properly driven.
>
> Jonathon
>
> On Thu, Oct 15, 2020, 15:08 Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I am getting this error (from the subject line) in a custom block I
>> created that is effectively just the combination of a window block and a
>> xilinx fft ip core. I am using UHD-4.0 (and Vivado 2019.1).
>>
>> After searching the user's list, I found some old posts from Jonathan
>> Pendlum that indicated that this was a known issue related to the Xilinx
>> FFT IP core.  The solution in the previous posts was to copy a "wave.do"
>> file from the Ettus in-tree FFT tb folder.  I didn't find such a file in
>> UHD-4.0 and so I'm wondering if there is a solution that works for UHD-4.0.
>> Rob
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000c0470705b1bae1c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OK. I&#39;ll check again.=C2=A0 One thing that&#39;s weird=
 is that if I comment out either the Window or the FFT (and insert appropri=
ate assign statements to replace the commented item), I don&#39;t get the e=
rror.=C2=A0 The error only occurs if both are in place.<div>Rob</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
, Oct 15, 2020 at 3:42 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.p=
endlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hey Rob,<div =
dir=3D"auto"><br></div><div dir=3D"auto">I&#39;ve ran into that issue when =
simulating Xilinx IP that use DSP48s. From what I can tell, they don&#39;t =
handle X and U signal states properly. Try double checking that all your si=
gnals are all properly driven.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Oct 15, 2020, 15:08 Rob Kossler via USRP-users=
 &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I am getting this error (f=
rom the subject line) in a custom block I created that is effectively just =
the combination of a window block and a xilinx fft ip core. I am using UHD-=
4.0 (and Vivado 2019.1).=C2=A0 </div><div><br></div><div>After searching th=
e user&#39;s list, I found some old posts from Jonathan Pendlum that indica=
ted that this was a known issue related to the Xilinx FFT IP core.=C2=A0 Th=
e solution in the previous posts was to copy a &quot;wave.do&quot; file fro=
m the Ettus in-tree FFT tb folder.=C2=A0 I didn&#39;t find such a file in U=
HD-4.0 and so I&#39;m wondering if there is a solution that works for UHD-4=
.0.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000c0470705b1bae1c7--


--===============5617859279749773410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5617859279749773410==--

