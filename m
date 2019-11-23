Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 30555108103
	for <lists+usrp-users@lfdr.de>; Sun, 24 Nov 2019 00:25:52 +0100 (CET)
Received: from [::1] (port=59328 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYeml-0005Hp-4R; Sat, 23 Nov 2019 18:25:51 -0500
Received: from mail-il1-f182.google.com ([209.85.166.182]:42518)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <austinadam42@gmail.com>)
 id 1iYemh-00058t-6w
 for usrp-users@lists.ettus.com; Sat, 23 Nov 2019 18:25:47 -0500
Received: by mail-il1-f182.google.com with SMTP id f6so6796920ilh.9
 for <usrp-users@lists.ettus.com>; Sat, 23 Nov 2019 15:25:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ugpkgj3DHM5Dm6sUZEp9f7KHgqV7Blqr00nGGsCikxk=;
 b=a5mHhHqwU6K6Bkk8k85QYHyO0Nn9ciUIvWkIEJfMIqJwYbpIC0Qp7046iDRx/TW45W
 tiSDqoGHfezMhdQ6CqcRbFdLcZrY5bMNLBV25zyv8rAG4ZKBKThA+JjBEtHNg4afOQ4e
 NgTV+yb0MxcOMwJZ3cA3uoIOvwDhmcHj2XS7iUDgfut7yB0oB4RRyTq6jRlrm7S6eOgl
 Kfjr8PRmx884k8CTNiKUPOBnGwfew6t5XIx1vGN7pFR1LSZ2/S2L9UcEzc7A88Kuq9RT
 U9RV86MwHpyzpF7UmJZlSNL0QaNFUmB652oqgPXhwtxPtushlTaz0tN2Zv2sjPkMpHhf
 MLkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ugpkgj3DHM5Dm6sUZEp9f7KHgqV7Blqr00nGGsCikxk=;
 b=s0y3Hl1NUdsthqt2VQORIaqin7tgLIotJ14J1gG0Sw9PqfuuRI6YnSSnSOTIOhY+t4
 2kecohLL5vQtfppTQRqhfhphKh+1e2GCPz8IjokAoaGh7JkWpVrgBTSbwH+UkZz+MksO
 5uC3xd38+bunDtuT5byYj9ECnFl6bOe34c9uxe1Jt8pVw3z6mGqaRIoeHfduU0Q0ZH/d
 Lo8Nkq0/EaGhVzENi4vctjNjFrSik1OWP90gtMLowojkfBaKETyCbJaIA+8kJmVYqHZe
 KZ+MoCfeEq9Upw598SLmrxdAKHiiqg5nsaC3P9PsCh6azL1YmDlYEvcdEGvmiV5HYszH
 oxMQ==
X-Gm-Message-State: APjAAAVMIJ2dbAyKB/KxazFcllzQ/XPw4PDpl1T2yeLb34IAS/hxXqHD
 pefBJ0Kd/Y8Gtg/tI4vIJDSfOk5wcsBlMo91U/4=
X-Google-Smtp-Source: APXvYqxcBrpy1cDsi7iNb+KCrFgi64aEQpjixeV83ZT6rsMidDWB5NFTWFdiyjmZzNSs5BiQHriDMMu5+RYaTRzc6hc=
X-Received: by 2002:a92:130b:: with SMTP id 11mr22624167ilt.222.1574551506478; 
 Sat, 23 Nov 2019 15:25:06 -0800 (PST)
MIME-Version: 1.0
References: <CAMKs6hfoUZdBUPQf5DjRdcRBjqgzAVRbT6xNVT2CncGPntAsTA@mail.gmail.com>
 <5DD9B351.5040406@gmail.com>
 <CAMKs6heE4bsDnBi5Yvb5gzPRb3nHyd15dmK1mO0Nbwson95J0A@mail.gmail.com>
 <5DD9B8E1.80705@gmail.com>
 <CAMKs6hejPSHcQE1K_AyH7yv1dRgy69j3vWErosJuu46-0fJdvQ@mail.gmail.com>
 <5DD9BE1D.1040300@gmail.com>
In-Reply-To: <5DD9BE1D.1040300@gmail.com>
Date: Sat, 23 Nov 2019 15:24:55 -0800
Message-ID: <CAMKs6hdMw5DjX37q=Lvn=UD2D_xf2G3zFtuAqASS27ELb9tPjQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============7467621666722926847=="
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

--===============7467621666722926847==
Content-Type: multipart/alternative; boundary="000000000000396ba205980bd7e1"

--000000000000396ba205980bd7e1
Content-Type: text/plain; charset="UTF-8"

For testing, I just put a simple signal source, added a head block, and
then a QT Time sink and it seems to just go for a second and freeze. I am
sure this is the correct way to do it. When it issues the 'done' is it
supposed to close? Or send a message? Or change some variable that I then
have to check in the code?

On Sat, Nov 23, 2019 at 3:17 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 11/23/2019 06:06 PM, Austin Adam wrote:
>
> So I just put it in between my source and sink and when it hits lets say
> 1000000 samples, it will automatically terminate the script? I just tried
> doing it and it doesn't seem to be working, it just sort of freezes up
> after about a second. Maybe I am not doing it correctly..
>
> You put it after your source, and the rest of the graph is the same.
>
> If it just "freezes up", that's, I think, unexpected, and may indicate
> some deficiencies in flowgraph shutdown on N3xx hardware.
>
> What does you GR script look like?
>
>
>
> On Sat, Nov 23, 2019 at 2:55 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 11/23/2019 05:48 PM, Austin Adam wrote:
>>
>> Hey Marcus,
>> Thank you for the quick response! This sounds like a good solution, could
>> you give some insight on how to go about doing it?
>>
>> Thank you so much!
>>
>> The "head" block takes a number, which is the count of samples that it
>> will allow through it before it declares "Done", and thus causes
>>   clean termination of your GR Script.
>>
>>
>>
>> On Sat, Nov 23, 2019 at 2:32 PM Marcus D. Leech via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> On 11/23/2019 03:49 PM, Austin Adam via USRP-users wrote:
>>>
>>> I am trying to run a Gnu Radio python file via the terminal and only
>>> want to run in for a few seconds and then kill it. Then, wait a little bit,
>>> and rerun the script again. My problem is that sometimes, when I rerun it,
>>> I get an issue with my USRP N310 in that it decides to just disconnect with
>>> either a "No devices found for" or "Someone tried to claim this device
>>> again" message. I have posted the error messages below from two different
>>> instances.
>>>
>>> When this happens, running uhd_find_devices does not find the N310,
>>> neither does uhd_find_devices --args=addr=192.168.10.2.
>>>
>>> Upon restarting the N310 by manually pressing the power button, it is
>>> able to be found by uhd_find_devices, and I can continue running the script
>>> until the error happens, and I have to go manually restart the USRP.
>>>
>>> I am trying to make an entire automated system and this is the one thing
>>> that requires manual effort, which is to get up and restart the USRP.
>>>
>>> I am looking for a way to either, reboot the USRP via commands for when
>>> the error occurs, or a solution/workaround to the problem if it exists.
>>>
>>> Is there any way to keep the USRP claimed and just tell the GNU part of
>>> the script to run each time I want to rerun it? Because each time I have to
>>> run the script, the USRP has to again be claimed and initiated. How can I
>>> keep it on at all times, or just skip the claiming step each time?
>>>
>>> Thank you in advance for any help you can provide!
>>>
>>> Here are the error messages:
>>> *[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
>>> UHD_3.14.0.HEAD-0-g6875d061*
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *Traceback (most recent call last):   File
>>> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 296, in <module>
>>>     main()   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
>>> line 284, in main     tb = top_block_cls()   File
>>> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 79, in __init__
>>>     channels=range(4),   File
>>> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
>>> 122, in constructor_interceptor     return old_constructor(*args)   File
>>> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
>>> 2782, in make     return _uhd_swig.usrp_source_make(*args) RuntimeError:
>>> LookupError: KeyError: No devices found for -----> Device Address:
>>> addr: 192.168.10.2     rx_lo_source: external     init_cals:
>>> BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY*
>>>
>>> *Here is the second time it happened:*
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *[INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700;
>>> UHD_3.14.0.HEAD-0-g6875d061 [INFO] [MPMD] Initializing 1 device(s) in
>>> parallel with args:
>>> mgmt_addr=192.168.10.2,type=n3xx,product=n310,serial=3177E63,claimed=True,addr=192.168.10.2,rx_lo_source=external,init_cals=BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_RX_LO_DELAY
>>> [ERROR] [RPC] Someone tried to claim this device again (From: 192.168.10.1)
>>> Traceback (most recent call last):   File
>>> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 296, in <module>
>>>     main()   File "/home/ugikie/Desktop/PositionControl/ArrayTest2.py",
>>> line 284, in main     tb = top_block_cls()   File
>>> "/home/ugikie/Desktop/PositionControl/ArrayTest2.py", line 79, in __init__
>>>     channels=range(4),   File
>>> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/__init__.py", line
>>> 122, in constructor_interceptor     return old_constructor(*args)   File
>>> "/usr/local/lib/python2.7/dist-packages/gnuradio/uhd/uhd_swig.py", line
>>> 2782, in make     return _uhd_swig.usrp_source_make(*args) RuntimeError:
>>> RuntimeError: Error during RPC call to `claim'. Error message: Someone
>>> tried to claim this device again (From: 192.168.10.1)*
>>>
>>> i\
>>>
>>> Instead of interrupting the GR script, you could use the "Head" block to
>>> have it run for a finite number of samples, then exit gracefully.
>>>   When you interrupt it, some things are clearly not getting cleaned up
>>> gracefully.
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>>
>

--000000000000396ba205980bd7e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For testing, I just put a simple signal source, added a he=
ad block, and then a QT Time sink and it seems to just go for a second and =
freeze. I am sure this is the correct way to do it. When it issues the &#39=
;done&#39; is it supposed to close? Or send a message? Or change some varia=
ble that I then have to check in the code?=C2=A0</div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 23, 2019 at 3:1=
7 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvo=
nbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 11/23/2019 06:06 PM, Austin Adam
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">So I just put it in between my source and sink and
        when it hits lets say 1000000 samples, it will automatically
        terminate the script? I just tried doing it and it doesn&#39;t seem
        to be working, it just sort of freezes up after about a second.
        Maybe I am not doing it correctly..</div>
    </blockquote>
    You put it after your source, and the rest of the graph is the same.<br=
>
    <br>
    If it just &quot;freezes up&quot;, that&#39;s, I think, unexpected, and=
 may
    indicate some deficiencies in flowgraph shutdown on N3xx hardware.<br>
    <br>
    What does you GR script look like?<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 23, 2019 at 2:55
          PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com"=
 target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 11/23/2019 05:48 PM, Austin Adam wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hey Marcus,
                <div>Thank you for the quick response! This sounds like
                  a good solution, could you give some insight on how to
                  go about doing it?</div>
                <div><br>
                </div>
                <div>Thank you so much! <br>
                </div>
              </div>
            </blockquote>
            The &quot;head&quot; block takes a number, which is the count o=
f
            samples that it will allow through it before it declares
            &quot;Done&quot;, and thus causes<br>
            =C2=A0 clean termination of your GR Script.<br>
            <br>
            <br>
            <blockquote type=3D"cite"><br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Sat, Nov 23, 2019
                  at 2:32 PM Marcus D. Leech via USRP-users &lt;<a href=3D"=
mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div bgcolor=3D"#FFFFFF">
                    <div>On 11/23/2019 03:49 PM, Austin Adam via
                      USRP-users wrote:<br>
                    </div>
                    <blockquote type=3D"cite">
                      <div dir=3D"ltr">I am trying to run a Gnu Radio
                        python file via the terminal and only want to
                        run in for a few seconds and then kill it. Then,
                        wait a little bit, and rerun the script again.
                        My problem is that sometimes, when I rerun it, I
                        get an issue with my USRP N310 in that it
                        decides to just disconnect with either a &quot;No
                        devices found for&quot; or &quot;Someone tried to c=
laim
                        this device again&quot; message. I have posted the
                        error messages below from two different
                        instances.
                        <div><br>
                        </div>
                        <div>
                          <div>When this happens, running
                            uhd_find_devices does not find the N310,
                            neither does uhd_find_devices
                            --args=3Daddr=3D192.168.10.2.</div>
                          <div><br>
                          </div>
                          <div>Upon restarting the N310 by manually
                            pressing the power button, it is able to be
                            found by uhd_find_devices, and I can
                            continue running the script until the error
                            happens, and I have to go manually restart
                            the USRP.</div>
                        </div>
                        <div><br>
                        </div>
                        <div>I am trying to make an entire automated
                          system and this is the one thing that requires
                          manual effort, which is to get up and restart
                          the USRP.</div>
                        <div><br>
                        </div>
                        <div>I am looking for a way to either, reboot
                          the USRP via commands for when the error
                          occurs, or a solution/workaround to the
                          problem if it exists.=C2=A0</div>
                        <div><br>
                        </div>
                        <div>Is there any way to keep the USRP claimed
                          and just tell the GNU part of the script to
                          run each time I want to rerun it? Because each
                          time I have to run the script, the USRP has to
                          again be claimed and initiated. How can I keep
                          it on at all times, or just skip the claiming
                          step each time?</div>
                        <div><br>
                        </div>
                        <div>Thank you in advance for any help you can
                          provide!</div>
                        <div><br>
                        </div>
                        <div>Here are the error messages:</div>
                        <div><i>[INFO] [UHD] linux; GNU C++ version
                            8.3.0; Boost_106700;
                            UHD_3.14.0.HEAD-0-g6875d061</i></div>
                        <i>Traceback (most recent call last):<br>
                          =C2=A0 File
                          &quot;/home/ugikie/Desktop/PositionControl/ArrayT=
est2.py&quot;,
                          line 296, in &lt;module&gt;<br>
                          =C2=A0 =C2=A0 main()<br>
                          =C2=A0 File
                          &quot;/home/ugikie/Desktop/PositionControl/ArrayT=
est2.py&quot;,
                          line 284, in main<br>
                          =C2=A0 =C2=A0 tb =3D top_block_cls()<br>
                          =C2=A0 File
                          &quot;/home/ugikie/Desktop/PositionControl/ArrayT=
est2.py&quot;,
                          line 79, in __init__<br>
                          =C2=A0 =C2=A0 channels=3Drange(4),<br>
                          =C2=A0 File
                          &quot;/usr/local/lib/python2.7/dist-packages/gnur=
adio/uhd/__init__.py&quot;,
                          line 122, in constructor_interceptor<br>
                          =C2=A0 =C2=A0 return old_constructor(*args)<br>
                          =C2=A0 File
                          &quot;/usr/local/lib/python2.7/dist-packages/gnur=
adio/uhd/uhd_swig.py&quot;,
                          line 2782, in make<br>
                          =C2=A0 =C2=A0 return _uhd_swig.usrp_source_make(*=
args)<br>
                          RuntimeError: LookupError: KeyError: No
                          devices found for -----&gt;<br>
                          Device Address:<br>
                          =C2=A0 =C2=A0 addr: 192.168.10.2<br>
                          =C2=A0 =C2=A0 rx_lo_source: external<br>
                          =C2=A0 =C2=A0 init_cals:
BASIC|TX_ATTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|=
LOOPBACK_RX_LO_DELAY</i><br>
                        <div><i><br>
                          </i></div>
                        <div><b>Here is the second time it happened:</b></d=
iv>
                        <div><i>[INFO] [UHD] linux; GNU C++ version
                            8.3.0; Boost_106700;
                            UHD_3.14.0.HEAD-0-g6875d061<br>
                            [INFO] [MPMD] Initializing 1 device(s) in
                            parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3177E63,claime=
d=3DTrue,addr=3D192.168.10.2,rx_lo_source=3Dexternal,init_cals=3DBASIC|TX_A=
TTENUATION_DELAY|RX_GAIN_DELAY|PATH_DELAY|TX_LO_LEAKAGE_INTERNAL|LOOPBACK_R=
X_LO_DELAY<br>
                            [ERROR] [RPC] Someone tried to claim this
                            device again (From: 192.168.10.1)<br>
                            Traceback (most recent call last):<br>
                            =C2=A0 File
                            &quot;/home/ugikie/Desktop/PositionControl/Arra=
yTest2.py&quot;,
                            line 296, in &lt;module&gt;<br>
                            =C2=A0 =C2=A0 main()<br>
                            =C2=A0 File
                            &quot;/home/ugikie/Desktop/PositionControl/Arra=
yTest2.py&quot;,
                            line 284, in main<br>
                            =C2=A0 =C2=A0 tb =3D top_block_cls()<br>
                            =C2=A0 File
                            &quot;/home/ugikie/Desktop/PositionControl/Arra=
yTest2.py&quot;,
                            line 79, in __init__<br>
                            =C2=A0 =C2=A0 channels=3Drange(4),<br>
                            =C2=A0 File
                            &quot;/usr/local/lib/python2.7/dist-packages/gn=
uradio/uhd/__init__.py&quot;,
                            line 122, in constructor_interceptor<br>
                            =C2=A0 =C2=A0 return old_constructor(*args)<br>
                            =C2=A0 File
                            &quot;/usr/local/lib/python2.7/dist-packages/gn=
uradio/uhd/uhd_swig.py&quot;,
                            line 2782, in make<br>
                            =C2=A0 =C2=A0 return _uhd_swig.usrp_source_make=
(*args)<br>
                            RuntimeError: RuntimeError: Error during RPC
                            call to `claim&#39;. Error message: Someone
                            tried to claim this device again (From:
                            192.168.10.1)</i><b><br>
                          </b></div>
                      </div>
                      <br>
                      i\<br>
                    </blockquote>
                    Instead of interrupting the GR script, you could use
                    the &quot;Head&quot; block to have it run for a finite =
number
                    of samples, then exit gracefully.<br>
                    =C2=A0 When you interrupt it, some things are clearly n=
ot
                    getting cleaned up gracefully.<br>
                    <br>
                    <br>
                    <br>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_=
blank">USRP-users@lists.ettus.com</a><br>
                  <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                </blockquote>
              </div>
            </blockquote>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000396ba205980bd7e1--


--===============7467621666722926847==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7467621666722926847==--

