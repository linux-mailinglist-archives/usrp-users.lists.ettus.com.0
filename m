Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9439DC96F6
	for <lists+usrp-users@lfdr.de>; Thu,  3 Oct 2019 05:31:24 +0200 (CEST)
Received: from [::1] (port=56604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iFrpl-00010Y-41; Wed, 02 Oct 2019 23:31:17 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:38493)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1iFrph-0000vd-Nx
 for usrp-users@lists.ettus.com; Wed, 02 Oct 2019 23:31:13 -0400
Received: by mail-io1-f43.google.com with SMTP id u8so2252604iom.5
 for <usrp-users@lists.ettus.com>; Wed, 02 Oct 2019 20:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=SmmL5iCVJa2bc+pA6LcobnYAXfOgb6DjSRU0dZG5s3U=;
 b=BprDocdRiZ0uUbL8r17wq9BRk6z3Np0lRAZTldQclcL5N6znU9/ZGzee3h1at6U3Gb
 0SYlxtR/3K9MsKmNqzQrmc7LUtwT/xB5uN/arAVmXGLZB5xeK4cwituit8lN6t8YfavC
 YKN7AsoiHiDU4UQ6TnucpbAEcSXeCPUVhDZ/qarrXScBr7F9nY570k7KqUWVUcrbFsgF
 TZ/E3Oa3KUSNkZA6gogdTbIBT6DHOQZnTDKP4Sh6DkE9oYpIbVEzVHPmgzyZVb5VVeV8
 7XNcpQ8u54/6CG+l9j+CIbqiiewDl+vdOoaXvOKBF7KAXdwZGBK63pS1HsRdMbDx+RY6
 ASFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=SmmL5iCVJa2bc+pA6LcobnYAXfOgb6DjSRU0dZG5s3U=;
 b=C6mTRshbWnv+4YZZgoWCa0Rzl7EgKAwQAGmruzGUk1ne0lDYoQV22epdDJkjuI44c3
 V4cHojfn2FczsDUrvsNdUf0YmZvoIhIRM4x8uwhGb5NUGNWhw+v2GA9wCNorKgjouTbs
 kyh4joEKQWSicX3M33YqFvp68ChA5u0XSlNp6wfcre6W6s5AY2heMD2ThZsFcl9WNLpK
 +wtdVAjWyjs6g63yTJHC0+BR3OpBA0VMHL/0LR6wfrS820MdY9xb0/6ZklF18kD4uPM8
 NK9r1aD8DbZItBJjeR/Vo3DA/maVp3Yw5laJ3+GiEvMBG/YswJrzrRiYfutok6nOFxqh
 c0TQ==
X-Gm-Message-State: APjAAAUIRi4bVP4P+U+o/qjbGotwFJdOyhEPsp7GRQ2kuGjqF5bgLtJv
 drJVy98FeoXrMMdBWWRcB0VwuYxsyevFP6okZuFgnK4zY2oMKg==
X-Google-Smtp-Source: APXvYqy7UT5K6bcmxzx2uBbM57FoEKKb8PsyACVkHII5S8PH7K5DML5re9jOOQNXkbMGWBnM2FJrRJUcjcPXKKMYI/8=
X-Received: by 2002:a92:5a0b:: with SMTP id o11mr7573456ilb.248.1570073432672; 
 Wed, 02 Oct 2019 20:30:32 -0700 (PDT)
MIME-Version: 1.0
References: <f7bc0c94-95c6-cfd3-d018-8461a21de64b@6tzvaim.com>
In-Reply-To: <f7bc0c94-95c6-cfd3-d018-8461a21de64b@6tzvaim.com>
Date: Thu, 3 Oct 2019 03:30:22 +0000
Message-ID: <CAKJyDk+TXPGKrvfQm0pdzOtuu+0ZN2wL5gnnAxA6mR3Gwe1mAA@mail.gmail.com>
To: Baroch Oren <baroch@6tzvaim.com>,
 Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] N310 link speed,
 buffer overflows and GPS locking / NMEA string
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Content-Type: multipart/mixed; boundary="===============0676908698012782130=="
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

--===============0676908698012782130==
Content-Type: multipart/alternative; boundary="00000000000039e34a0593f93575"

--00000000000039e34a0593f93575
Content-Type: text/plain; charset="UTF-8"

Hi Baroch.
When you update UHD on the host, you should also update the N310 SD card
filesystem to the corresponding version.  In your case:
http://files.ettus.com/binaries/cache/n3xx/meta-ettus-v3.14.0.0/

 DIrections on how to update the SD card can be found here:
https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card

You could try forcing the SFP+ network connections on your host PC to be
10gigE from the network manager.  Be sure to set the MTU manually to 8000
for both SFP+ ports to correspond to the network settings on the N310.
Double-check that you're loading the XG FPGA image (both SFP+ ports
provisioned as 10gigE).

Issue #3 may be related to the UHD version mismatch mentioned above.
 There is some info about how to query the GPSDO sensor from the ARM
processor on the N310 on the Ettus KB: https://kb.ettus.com/N300/N310 (scroll
down to the GSPDO section).

-Robin


On Wed, Oct 2, 2019 at 1:05 PM Baroch Oren via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello all. This is my first post here so hopefully it will stand the
> expectations.
>
>
> My setup is:
>         Device - N310 with UHD 3.13.0.2-0-uknown serial=31950A8
>         Host - rebuilt UHD on the host computer, using
> 3.14.0.HEAD-0-g6875d061
>         connected via mgmt via 1Gb eth, and 2 sfp ports.
>         cpu_governor is set to performance (4 cores at 3.75GHz)
>         network buffers (r_mem/w_mem) are 625,000,000
>
> 1. Once upgraded the host's UHD to 3.14.0 (and the FPGA image as well), we
> keep getting "Could not determine link speed; using 1GibE max speed of
> 125000000". (These messages were not there before the upgrade). Is there
> any way to connect with both 10Gb connections and get feedback that this
> link speed is used by the software?
>
> 2. I cannot manage to sample for periods longer than 0.06 sec (0.08 fails)
> on 4 channels. the benchmark_rate example application cannot reach 10
> seconds without DDD or DDODD on sampling rate of 30.72e6 when clock is
> 122.88e6 . This limitation is fairly reproducable. Also it does not matter
> if I use GnuRadio or "rx_samples_to_file". Anyway data is routed to a
> ramdrive (write speed should be > 2Gbyte/sec). What I need is about 3
> seconds of continuous capture.
>
> 3. If I use usrp->set_time_source("external") I get an error "At least one
> PLL did not lock!" or "Failed to capture PPS within 1.1 seconds.
> TDC_STATUS: 0x0"
> and if I use "gpsdo", I cannot get any feedback that gps is pps locked and
> used. only the message "1) catch time transition at pps edge 2) set times
> next pps (synchronously)" - does it mean that gps is locked?
>
> 4. how can I get NMEA string from the internal GPSDO of the N310?
>
> Thanks in advance,
> Baroch Oren
> --
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000039e34a0593f93575
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Baroch.=C2=A0</div><div>When you update UHD on the=
 host, you should also update the N310 SD card filesystem to the correspond=
ing version.=C2=A0 In your case:<br></div><div><a href=3D"http://files.ettu=
s.com/binaries/cache/n3xx/meta-ettus-v3.14.0.0/">http://files.ettus.com/bin=
aries/cache/n3xx/meta-ettus-v3.14.0.0/</a><br></div><div><br></div><div>=C2=
=A0DIrections on how to update the SD card can be found here:=C2=A0<a href=
=3D"https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Ca=
rd">https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Ca=
rd</a></div><div><br></div><div>You could try forcing the SFP+ network conn=
ections on your host PC to be 10gigE from the network manager.=C2=A0 Be sur=
e to set the MTU manually to 8000 for both SFP+ ports to correspond to the =
network settings on the N310.=C2=A0 Double-check that you&#39;re loading th=
e XG FPGA image (both SFP+ ports provisioned as 10gigE).</div><div><br></di=
v><div>Issue #3 may be related to the UHD version mismatch mentioned above.=
=C2=A0 =C2=A0There is some info about how to query the GPSDO sensor from th=
e ARM processor on the N310 on the Ettus KB:=C2=A0<a href=3D"https://kb.ett=
us.com/N300/N310">https://kb.ettus.com/N300/N310</a>=C2=A0(scroll down to t=
he GSPDO=C2=A0section).=C2=A0 =C2=A0</div><div><br></div><div>-Robin</div><=
div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Oct 2, 2019 at 1:05 PM Baroch Oren via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20

   =20
   =20
 =20
  <div style=3D"direction:ltr" bgcolor=3D"#FFFFFF">
    <p>Hello all. This is my first post here so hopefully it will stand
      the expectations. <br>
    </p>
    <p><br>
    </p>
    My setup is:<br>
    =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Device - N310 with UHD 3.13.0.2-0=
-uknown serial=3D31950A8<br>
    =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Host - rebuilt UHD on the host co=
mputer, using
    3.14.0.HEAD-0-g6875d061<br>
    =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 connected via mgmt via 1Gb eth, a=
nd 2 sfp ports.<br>
    =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 cpu_governor is set to performanc=
e (4 cores at 3.75GHz)<br>
    =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 network buffers (r_mem/w_mem) are=
 625,000,000<br>
    <br>
    1. Once upgraded the host&#39;s UHD to 3.14.0 (and the FPGA image as
    well), we keep getting &quot;Could not determine link speed; using 1Gib=
E
    max speed of 125000000&quot;. (These messages were not there before the
    upgrade). Is there any way to connect with both 10Gb connections and
    get feedback that this link speed is used by the software?<br>
    <br>
    2. I cannot manage to sample for periods longer than 0.06 sec (0.08
    fails) on 4 channels. the benchmark_rate example application cannot
    reach 10 seconds without DDD or DDODD on sampling rate of 30.72e6
    when clock is 122.88e6 . This limitation is fairly reproducable.
    Also it does not matter if I use GnuRadio or &quot;rx_samples_to_file&q=
uot;.
    Anyway data is routed to a ramdrive (write speed should be &gt;
    2Gbyte/sec). What I need is about 3 seconds of continuous capture.<br>
    <br>
    3. If I use usrp-&gt;set_time_source(&quot;external&quot;) I get an err=
or &quot;At
    least one PLL did not lock!&quot; or &quot;Failed to capture PPS within=
 1.1
    seconds. TDC_STATUS: 0x0&quot;<br>
    and if I use &quot;gpsdo&quot;, I cannot get any feedback that gps is p=
ps
    locked and used. only the message &quot;1) catch time transition at pps
    edge 2) set times next pps (synchronously)&quot; - does it mean that gp=
s
    is locked?<br>
    <br>
    4. how can I get NMEA string from the internal GPSDO of the N310?<br>
    <br>
    Thanks in advance,<br>
    Baroch Oren=C2=A0 <br>
    <div>-- <br>
      <div dir=3D"rtl"><br>
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

--00000000000039e34a0593f93575--


--===============0676908698012782130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0676908698012782130==--

