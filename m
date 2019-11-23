Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CF91080F1
	for <lists+usrp-users@lfdr.de>; Sat, 23 Nov 2019 23:49:34 +0100 (CET)
Received: from [::1] (port=43698 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYeDb-0001xq-KG; Sat, 23 Nov 2019 17:49:31 -0500
Received: from mail-il1-f172.google.com ([209.85.166.172]:45733)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1iYeDY-0001oK-3F
 for usrp-users@lists.ettus.com; Sat, 23 Nov 2019 17:49:28 -0500
Received: by mail-il1-f172.google.com with SMTP id o18so10712753ils.12
 for <usrp-users@lists.ettus.com>; Sat, 23 Nov 2019 14:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mmp7EQVDfIAkCgZlzPl9SnbVh9NvXe+XuO3fbTv0Svk=;
 b=tBYC8s+CL7kj9Ygjskz+QCUc+rv7fix646TRuwJE0SVPljRshZvlM6K836z/k6b7da
 vRxc+GzXwsVSksYf7GCMY2luDKnqJgMJYU7pejViOaA5kwPSzAwWuBq4WEcrLGRtOgR7
 L223py8mTeU87DgxkAlV5QrJBQ9qaOLrvGwtN331ggrXR9ty/4D8Y/y/Md7gSPETuUKJ
 674yvk6fqIwRz7oZTQ4N7aNk+AhgLK6L4cs9aarv9swSQdk9rA4NQ5C4KmZ+N5VK7GJT
 vdPvNinpmoFJFdw6RlYjJwIbfoZsGMIsFxkYuX55jHAHB/9rS3L1QJ2/EV4+MgjLSscF
 vEYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mmp7EQVDfIAkCgZlzPl9SnbVh9NvXe+XuO3fbTv0Svk=;
 b=Oyfsgiv6smyPnhdOrqy9Ln4/aJiQr9uSL9I3FXfDVGueucTwS8d53PjASKQdWAp/kG
 Srv6gbKAdbaTRo/JtSiwS8wrfglo/0OpYMtPnZjhSy+2hTA3QZ/ccS+EQPpFnP/5m9kH
 K4VW3V2Vh6YT7TmY6Pyu7W3waIkjIBT78gsVlTZC0sM3OPK8VCrHFYSwmoci48+N2kWF
 EQg2OUkM9ZZFQ5PxlhSIZRmJw/YxogKRm7bi8F5vuIv3WjeVrSlzfFbPcDgb3m/aT0du
 5aWFvUnrZ7iEIT5mcp4GOD4/r9U2Qmj7YQaVSzuV/1VRxgXwKdhKzUuHbJXLuJx/PhTW
 0+lw==
X-Gm-Message-State: APjAAAXt6KmVHllZu/sp1zzVcwQGEbZfV5isC2Ot6YNAqAi3PXJwpdW2
 Q0Ga0yUWfVv+RleaGsJlyNGfRYJMYMrXYAFBdvk=
X-Google-Smtp-Source: APXvYqy/8Q7tDs5yYAiDS/hxRzykgGW68WGQLfPg058ZTYAPfhIUHNYM5TeyWQa0nEgMo6LW/q8IysrAjuYlBdO8ado=
X-Received: by 2002:a92:8404:: with SMTP id l4mr26726891ild.137.1574549327200; 
 Sat, 23 Nov 2019 14:48:47 -0800 (PST)
MIME-Version: 1.0
References: <CAMKs6hfoUZdBUPQf5DjRdcRBjqgzAVRbT6xNVT2CncGPntAsTA@mail.gmail.com>
 <5DD9B351.5040406@gmail.com>
In-Reply-To: <5DD9B351.5040406@gmail.com>
Date: Sat, 23 Nov 2019 14:48:36 -0800
Message-ID: <CAMKs6heE4bsDnBi5Yvb5gzPRb3nHyd15dmK1mO0Nbwson95J0A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] USRP N310 Losing Connection Occassionally
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
From: Austin Adam via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Austin Adam <austinadam42@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2515153206699610667=="
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

--===============2515153206699610667==
Content-Type: multipart/alternative; boundary="00000000000054491e05980b551f"

--00000000000054491e05980b551f
Content-Type: text/plain; charset="UTF-8"

Hey Marcus,
Thank you for the quick response! This sounds like a good solution, could
you give some insight on how to go about doing it?

Thank you so much!

On Sat, Nov 23, 2019 at 2:32 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 11/23/2019 03:49 PM, Austin Adam via USRP-users wrote:
>
> I am trying to run a Gnu Radio python file via the terminal and only want
> to run in for a few seconds and then kill it. Then, wait a little bit, and
> rerun the script again. My problem is that sometimes, when I rerun it, I
> get an issue with my USRP N310 in that it decides to just disconnect with
> either a "No devices found for" or "Someone tried to claim this device
> again" message. I have posted the error messages below from two different
> instances.
>
> When this happens, running uhd_find_devices does not find the N310,
> neither does uhd_find_devices --args=addr=192.168.10.2.
>
> Upon restarting the N310 by manually pressing the power button, it is able
> to be found by uhd_find_devices, and I can continue running the script
> until the error happens, and I have to go manually restart the USRP.
>
> I am trying to make an entire automated system and this is the one thing
> that requires manual effort, which is to get up and restart the USRP.
>
> I am looking for a way to either, reboot the USRP via commands for when
> the error occurs, or a solution/workaround to the problem if it exists.
>
> Is there any way to keep the USRP claimed and just tell the GNU part of
> the script to run each time I want to rerun it? Because each time I have to
> run the script, the USRP has to again be claimed and initiated. How can I
> keep it on at all times, or just skip the claiming step each time?
>
> Thank you in advance for any help you can provide!
>
> Here are the error messages:
> *[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
> UHD_3.14.0.HEAD-0-g6875d061*
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *Traceback (most recent call last):   File
> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 296, in <module>
>     main()   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
> line 284, in main     tb = top_block_cls()   File
> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 79, in __init__
>     channels=range(4),   File
> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
> 122, in constructor_interceptor     return old_constructor(*args)   File
> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
> 2782, in make     return _uhd_swig.usrp_source_make(*args) RuntimeError:
> LookupError: KeyError: No devices found for -----> Device Address:
> addr: 192.168.10.2     rx_lo_source: external     init_cals:
> BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY*
>
> *Here is the second time it happened:*
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> *[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
> UHD_3.14.0.HEAD-0-g6875d061 [INFO] [MPMD] Initializing 1 device(s) in
> parallel with args:
> mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=True,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY
> [ERROR] [RPC] Someone tried to claim this device again (From: 192.168.10.1)
> Traceback (most recent call last):   File
> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 296, in <module>
>     main()   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
> line 284, in main     tb = top_block_cls()   File
> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 79, in __init__
>     channels=range(4),   File
> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
> 122, in constructor_interceptor     return old_constructor(*args)   File
> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
> 2782, in make     return _uhd_swig.usrp_source_make(*args) RuntimeError:
> RuntimeError: Error during RPC call to `claim'. Error message: Someone
> tried to claim this device again (From: 192.168.10.1)*
>
> i\
>
> Instead of interrupting the GR script, you could use the "Head" block to
> have it run for a finite number of samples, then exit gracefully.
>   When you interrupt it, some things are clearly not getting cleaned up
> gracefully.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000054491e05980b551f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Marcus,<div>Thank you for the quick response! This sou=
nds like a good solution, could you give some insight on how to go about do=
ing it?</div><div><br></div><div>Thank you so much!=C2=A0</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov =
23, 2019 at 2:32 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 11/23/2019 03:49 PM, Austin Adam via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">I am trying to run a Gnu Radio python file via the
        terminal and only want to run in for a few seconds and then kill
        it. Then, wait a little bit, and rerun the script again. My
        problem is that sometimes, when I rerun it, I get an issue with
        my USRP N310 in that it decides to just disconnect with either a
        &quot;No devices found for&quot; or &quot;Someone tried to claim th=
is device
        again&quot; message. I have posted the error messages below from tw=
o
        different instances.
        <div><br>
        </div>
        <div>
          <div>When this happens, running uhd_find_devices does not find
            the N310, neither does uhd_find_devices
            --args=3Daddr=3D192.168.10.2.</div>
          <div><br>
          </div>
          <div>Upon restarting the N310 by manually pressing the power
            button, it is able to be found by uhd_find_devices, and I
            can continue running the script until the error happens, and
            I have to go manually restart the USRP.</div>
        </div>
        <div><br>
        </div>
        <div>I am trying to make an entire automated system and this is
          the one thing that requires manual effort, which is to get up
          and restart the USRP.</div>
        <div><br>
        </div>
        <div>I am looking for a way to either, reboot the USRP via
          commands for when the error occurs, or a solution/workaround
          to the problem if it exists.=C2=A0</div>
        <div><br>
        </div>
        <div>Is there any way to keep the USRP claimed and just tell the
          GNU part of the script to run each time I want to rerun it?
          Because each time I have to run the script, the USRP has to
          again be claimed and initiated. How can I keep it on at all
          times, or just skip the claiming step each time?</div>
        <div><br>
        </div>
        <div>Thank you in advance for any help you can provide!</div>
        <div><br>
        </div>
        <div>Here are the error messages:</div>
        <div><i>[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
            UHD_3.14.0.HEAD-0-g6875d061</i></div>
        <i>Traceback (most recent call last):<br>
          =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTest2=
.py&quot;,
          line 296, in &lt;module&gt;<br>
          =C2=A0 =C2=A0 main()<br>
          =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTest2=
.py&quot;,
          line 284, in main<br>
          =C2=A0 =C2=A0 tb =3D top_block_cls()<br>
          =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTest2=
.py&quot;,
          line 79, in __init__<br>
          =C2=A0 =C2=A0 channels=3Drange(4),<br>
          =C2=A0 File
          &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init_=
_.py&quot;,
          line 122, in constructor_interceptor<br>
          =C2=A0 =C2=A0 return old_constructor(*args)<br>
          =C2=A0 File
          &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swi=
g.py&quot;,
          line 2782, in make<br>
          =C2=A0 =C2=A0 return _uhd_swig.usrp_source_make(*args)<br>
          RuntimeError: LookupError: KeyError: No devices found for
          -----&gt;<br>
          Device Address:<br>
          =C2=A0 =C2=A0 addr: 192.168.10.2<br>
          =C2=A0 =C2=A0 rx_lo_source: external<br>
          =C2=A0 =C2=A0 init_cals:
BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|=
LOOPBACK_RX_LO_DELAY</i><br>
        <div><i><br>
          </i></div>
        <div><b>Here is the second time it happened:</b></div>
        <div><i>[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
            UHD_3.14.0.HEAD-0-g6875d061<br>
            [INFO] [MPMD] Initializing 1 device(s) in parallel with
            args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3177E63,claime=
d=3DTrue,addr=3D192.168.10.2,rx_lo_source=3Dexternal,init_cals=3DBASIC|TX_A=
TTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_R=
X_LO_DELAY<br>
            [ERROR] [RPC] Someone tried to claim this device again
            (From: 192.168.10.1)<br>
            Traceback (most recent call last):<br>
            =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTes=
t2.py&quot;,
            line 296, in &lt;module&gt;<br>
            =C2=A0 =C2=A0 main()<br>
            =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTes=
t2.py&quot;,
            line 284, in main<br>
            =C2=A0 =C2=A0 tb =3D top_block_cls()<br>
            =C2=A0 File &quot;/home/ugikie/Desktop/PositionControl/ArrayTes=
t2.py&quot;,
            line 79, in __init__<br>
            =C2=A0 =C2=A0 channels=3Drange(4),<br>
            =C2=A0 File
            &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__ini=
t__.py&quot;,
            line 122, in constructor_interceptor<br>
            =C2=A0 =C2=A0 return old_constructor(*args)<br>
            =C2=A0 File
            &quot;/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_s=
wig.py&quot;,
            line 2782, in make<br>
            =C2=A0 =C2=A0 return _uhd_swig.usrp_source_make(*args)<br>
            RuntimeError: RuntimeError: Error during RPC call to
            `claim&#39;. Error message: Someone tried to claim this device
            again (From: 192.168.10.1)</i><b><br>
          </b></div>
      </div>
      <br>
      i\<br>
    </blockquote>
    Instead of interrupting the GR script, you could use the &quot;Head&quo=
t;
    block to have it run for a finite number of samples, then exit
    gracefully.<br>
    =C2=A0 When you interrupt it, some things are clearly not getting clean=
ed
    up gracefully.<br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000054491e05980b551f--


--===============2515153206699610667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2515153206699610667==--

