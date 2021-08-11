Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E575A3E9688
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 19:05:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C38BD384F1A
	for <lists+usrp-users@lfdr.de>; Wed, 11 Aug 2021 13:05:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="f8VSFJ2z";
	dkim-atps=neutral
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B1AE3846A7
	for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 13:04:49 -0400 (EDT)
Received: by mail-qk1-f178.google.com with SMTP id t66so3198465qkb.0
        for <usrp-users@lists.ettus.com>; Wed, 11 Aug 2021 10:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=VhKvzmLSKzCN0MGEA36CtcKrvwF/DwradhZhWgzyH50=;
        b=f8VSFJ2zeRX5ZRYoSLhJ8VuXSxIqLFFQjlU5MAvQzlbhj5PPe4md+xTnoUiWJzH8KU
         QRfXFOHMWugpw7kAGV4ua60iRYsjqGz+agLMzrLDCMyZBIUKlCRym6PxkktDS8eNSX5E
         iTjCZB5v64p3mW3F/0On0IYE2w0KDpupuvMTjzQsCXYtMlu7D6WUXU0+GUOfSpOAcL8q
         e+sakd1iQMASLz0fuePfVbhhaR/C2gbLDKbhLif2UZnwDzIt1YJyz3kQcCxg0xCqX89L
         aWRIB4piEK9xwhbtn2iERdFJErhVmhBP6IAtrraWqeGwdroSeC2jfdGPhzpD0tSJwCpB
         3Ibw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=VhKvzmLSKzCN0MGEA36CtcKrvwF/DwradhZhWgzyH50=;
        b=B83EIenwoG5EbljoSmjdXWxRgY/EUU6GBzVa7KPgSycxbhDEMZgd02ZJXip+GDGe9H
         679ZHeyjlXcJJr8nSKGT71Es4Y3W33fsILCYlrrLD5YFTSxtXqyDDShBBelnxBZOsn5N
         Pe2OoAIvys1Wdt6QG2/rOtvnM9dTsvdoROZ2MXzIkV7DmUlkhCOiXSG3QPOwm03Rtk+I
         LGT1d9rwmhhrMXFlR4lWqUZSQxoke7Jcy6K5IZZM8qXWpEJRe+54VLu858Me86+KrVBL
         /x6EOJ3Jwr7iqJz9srI3phGqmsfAmxJQNeeRSZorUASyNzwjTiTSr5MoysAKYWY0iRVM
         1pZg==
X-Gm-Message-State: AOAM531q/TVrw9PvqZSKNSJTE1A8L6sFVFeM8WbOTmyoW8bP/TqccG4z
	TMPwwBRfZ6dqunTXBTviDOQeXr6MyMI0hQ==
X-Google-Smtp-Source: ABdhPJyHqxMhcAxVBguqAe5X3rwu7bpbbWYoSq/DnarJikDCrH8X0DflQ6a867dSXEwpZuO/9ByvcA==
X-Received: by 2002:a05:620a:1446:: with SMTP id i6mr6433828qkl.63.1628701488173;
        Wed, 11 Aug 2021 10:04:48 -0700 (PDT)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id m20sm11141318qkp.3.2021.08.11.10.04.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 10:04:47 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 11 Aug 2021 13:04:46 -0400
Message-Id: <280FA36D-8E90-4AD3-AA36-0E506C42290F@gmail.com>
References: <CACwKM9KH5OVWHAEsdGH0=c7oRMoOQ7f5V+3-o+kM0Lp4ZnUxsw@mail.gmail.com>
In-Reply-To: <CACwKM9KH5OVWHAEsdGH0=c7oRMoOQ7f5V+3-o+kM0Lp4ZnUxsw@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
X-Mailer: iPhone Mail (18G82)
Message-ID-Hash: NCTMLIDWR7ALAPHKZJS7VZYYLLN5P4S4
X-Message-ID-Hash: NCTMLIDWR7ALAPHKZJS7VZYYLLN5P4S4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B2XX radios don't continue on overflows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NCTMLIDWR7ALAPHKZJS7VZYYLLN5P4S4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3571961458504714170=="


--===============3571961458504714170==
Content-Type: multipart/alternative; boundary=Apple-Mail-3A252260-A804-4264-9A33-4C788415F736
Content-Transfer-Encoding: 7bit


--Apple-Mail-3A252260-A804-4264-9A33-4C788415F736
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

When this happens, does dmesg show anything unusual with respect to that USB=
 device?

Sent from my iPhone

> On Aug 11, 2021, at 12:40 PM, Paul Atreides <maud.dib1984@gmail.com> wrote=
:
>=20
> =EF=BB=BF
> just uninstalled and changed to origin/UHD4.1 and i have the same issue.=20=

> On branch UHD-4.1
> Your branch is up to date with 'origin/UHD-4.1'.
>=20
> On Wed, Aug 11, 2021 at 12:23 PM Paul Atreides <maud.dib1984@gmail.com> wr=
ote:
>> just built uhd systemwide from source. no pybombs environment. same issue=
 rx_benchmark terminates after the first dropped sample.
>> maybe the patch didn't make it? or i'm on the wrong branch?
>> i ran git checkout v4.1.0.1 then the regular dance
>>=20
>> ~/uhd$ git status
>> HEAD detached at v4.1.0.1
>> nothing to commit, working tree clean
>>=20
>> cd uhd/host
>> mkdir build
>> cd build
>> cmake ../ (no errors or exclusions other than DPDK)
>> make -j($nproc)
>> sudo make install
>> sudo ldconfig
>>=20
>>=20
>>=20
>> uhd/host/build/examples/./rx_samples_to_file --rate 40e6 --gain 40.0 --fr=
eq 915e6 --bw 36e6 --progress --file testfile.bin --continue --duration 20
>>=20
>> Creating the usrp device with: ...
>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.1.0.HEAD-0=
-gf633b497
>> [INFO] [B200] Detected Device: B210
>> [INFO] [B200] Operating over USB 3.
>> [INFO] [B200] Detecting internal GPSDO....=20
>> [INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.929b
>> [INFO] [B200] Initialize CODEC control...
>> [INFO] [B200] Initialize Radio control...
>> [INFO] [B200] Performing register loopback test...=20
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Performing register loopback test...=20
>> [INFO] [B200] Register loopback test passed
>> [INFO] [B200] Setting master clock rate selection to 'automatic'.
>> [INFO] [B200] Asking for clock rate 16.000000 MHz...=20
>> [INFO] [B200] Actually got clock rate 16.000000 MHz.
>> Using Device: Single USRP:
>>   Device: B-Series Device
>>   Mboard 0: B210
>>   RX Channel: 0
>>     RX DSP: 0
>>     RX Dboard: A
>>     RX Subdev: FE-RX2
>>   RX Channel: 1
>>     RX DSP: 1
>>     RX Dboard: A
>>     RX Subdev: FE-RX1
>>   TX Channel: 0
>>     TX DSP: 0
>>     TX Dboard: A
>>     TX Subdev: FE-TX2
>>   TX Channel: 1
>>     TX DSP: 1
>>     TX Dboard: A
>>     TX Subdev: FE-TX1
>>=20
>> Setting RX Rate: 40.000000 Msps...
>> [INFO] [B200] Asking for clock rate 40.000000 MHz...=20
>> [INFO] [B200] Actually got clock rate 40.000000 MHz.
>> Actual RX Rate: 40.000000 Msps...
>>=20
>> Setting RX Freq: 915.000000 MHz...
>> Setting RX LO Offset: 0.000000 MHz...
>> Actual RX Freq: 915.000000 MHz...
>>=20
>> Setting RX Gain: 40.000000 dB...
>> Actual RX Gain: 40.000000 dB...
>>=20
>> Setting RX Bandwidth: 36.000000 MHz...
>> Actual RX Bandwidth: 36.000000 MHz...
>>=20
>> Waiting for "lo_locked": ++++++++++ locked.
>>=20
>> Press Ctrl + C to stop streaming...
>> 40.0125 Msps
>> 39.9994 Msps
>> 39.9995 Msps
>> OGot an overflow indication. Please consider the following:
>>   Your write medium must sustain a rate of 160.000000MB/s.
>>   Dropped samples will not be written to the file.
>>   Please modify this example for your purposes.
>>   This message will not appear again.
>> Timeout while streaming
>>=20
>> Done!
>>=20
>> On Wed, Aug 11, 2021 at 10:42 AM Paul Atreides <maud.dib1984@gmail.com> w=
rote:
>>> right on. thanks marcus.=20
>>> i'm going to try a regular source build instead of pybombs and see if th=
at fixes it (he said for the 200th time in his career).=20
>>> i just wanted 2 dev environments for gnuradio and that worked really wel=
l for 3.7/3.8. if you have any suggestions i'm open to that.=20
>>>=20
>>> i'll keep you guys posted and thanks again for helping.=20
>>>=20
>>>=20
>>> On Wed, Aug 11, 2021 at 10:36 AM Marcus D. Leech <patchvonbraun@gmail.co=
m> wrote:
>>>> On 08/11/2021 10:20 AM, Paul Atreides wrote:
>>>>> right. i tried 4.1 first, then master then rolled back to 4.0. they al=
l did the same thing.
>>>>> according to micheal's post above the patch is applied to 4.0 master. t=
he latest UHD-4.0 rev is here (0d184ff)
>>>>> this is my output
>>>>> UHD_4.0.0.0-193-g0d184ff4
>>>>>=20
>>>>>=20
>>>> The patch is definitely in 4.1.0.0 and 4.1.0.1
>>>>=20
>>>>=20
>>>>>=20
>>>>> On Wed, Aug 11, 2021 at 10:07 AM Marcus D. Leech <patchvonbraun@gmail.=
com> wrote:
>>>>>> On 08/11/2021 10:03 AM, Paul Atreides wrote:
>>>>>>> Ok, then what else could it be? it's the identical behavior to the r=
eport ed bug.
>>>>>>>=20
>>>>>>> I have a b210 and b205mini and both produce this issue=20
>>>>>>> Both have worked fine at higher sample rates in the past.=20
>>>>>>>=20
>>>>>>> My setup is=20
>>>>>>> ubuntu20.04
>>>>>>> UHD 4.0 (via pybombs)
>>>>>>> GNURadio 3.9 (via pybombs)
>>>>>>>=20
>>>>>> This is what Michael Dickens said:
>>>>>>=20
>>>>>> It was not part of the UHD 4.0.0.0 release, and has not been backport=
ed to the UHD-3.15-LTS (or prior) branch. - MLD
>>>>>>=20
>>>>>> You're still running 4.0.0.0 as shown in the UHD startup header here:=

>>>>>>=20
>>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-=
193-g0d184ff4
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>=20

--Apple-Mail-3A252260-A804-4264-9A33-4C788415F736
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">When this happens, does dmesg show anything=
 unusual with respect to that USB device?<br><br><div dir=3D"ltr">Sent from m=
y iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Aug 11, 2021=
, at 12:40 PM, Paul Atreides &lt;maud.dib1984@gmail.com&gt; wrote:<br><br></=
blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div di=
r=3D"ltr"><div>just uninstalled and changed to origin/UHD4.1 and i have the s=
ame issue. <br></div><div>On branch UHD-4.1<br>Your branch is up to date wit=
h 'origin/UHD-4.1'.<br> </div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 12:23 PM Paul Atreides &l=
t;<a href=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div>just built uhd systemwide from source. no pybombs environment. sam=
e issue rx_benchmark terminates after the first dropped sample.</div><div>ma=
ybe the patch didn't make it? or i'm on the wrong branch?</div><div>i ran gi=
t checkout v4.1.0.1 then the regular dance</div><div><br></div><div><div>~/u=
hd$ git status<br>HEAD detached at v4.1.0.1</div><div>nothing to commit, wor=
king tree clean<br></div></div><div><br></div><div>cd uhd/host</div><div>mkd=
ir build</div><div>cd build</div><div>cmake ../ (no errors or exclusions oth=
er than DPDK)</div><div>make -j($nproc)</div><div>sudo make install</div><di=
v>sudo ldconfig<br></div><div><br></div><br><div><br></div><div>uhd/host/bui=
ld/examples/./rx_samples_to_file --rate 40e6 --gain 40.0 --freq 915e6 --bw 3=
6e6 --progress --file testfile.bin --continue --duration 20<br><br>Creating t=
he usrp device with: ...<br>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boost=
_107100; UHD_4.1.0.HEAD-0-gf633b497<br>[INFO] [B200] Detected Device: B210<b=
r>[INFO] [B200] Operating over USB 3.<br>[INFO] [B200] Detecting internal GP=
SDO.... <br>[INFO] [GPS] Found an internal GPSDO: GPSTCXO, Firmware Rev 0.92=
9b<br>[INFO] [B200] Initialize CODEC control...<br>[INFO] [B200] Initialize R=
adio control...<br>[INFO] [B200] Performing register loopback test... <br>[I=
NFO] [B200] Register loopback test passed<br>[INFO] [B200] Performing regist=
er loopback test... <br>[INFO] [B200] Register loopback test passed<br>[INFO=
] [B200] Setting master clock rate selection to 'automatic'.<br>[INFO] [B200=
] Asking for clock rate 16.000000 MHz... <br>[INFO] [B200] Actually got cloc=
k rate 16.000000 MHz.<br>Using Device: Single USRP:<br>&nbsp; Device: B-Seri=
es Device<br>&nbsp; Mboard 0: B210<br>&nbsp; RX Channel: 0<br>&nbsp; &nbsp; R=
X DSP: 0<br>&nbsp; &nbsp; RX Dboard: A<br>&nbsp; &nbsp; RX Subdev: FE-RX2<br=
>&nbsp; RX Channel: 1<br>&nbsp; &nbsp; RX DSP: 1<br>&nbsp; &nbsp; RX Dboard:=
 A<br>&nbsp; &nbsp; RX Subdev: FE-RX1<br>&nbsp; TX Channel: 0<br>&nbsp; &nbs=
p; TX DSP: 0<br>&nbsp; &nbsp; TX Dboard: A<br>&nbsp; &nbsp; TX Subdev: FE-TX=
2<br>&nbsp; TX Channel: 1<br>&nbsp; &nbsp; TX DSP: 1<br>&nbsp; &nbsp; TX Dbo=
ard: A<br>&nbsp; &nbsp; TX Subdev: FE-TX1<br><br>Setting RX Rate: 40.000000 M=
sps...<br>[INFO] [B200] Asking for clock rate 40.000000 MHz... <br>[INFO] [B=
200] Actually got clock rate 40.000000 MHz.<br>Actual RX Rate: 40.000000 Msp=
s...<br><br>Setting RX Freq: 915.000000 MHz...<br>Setting RX LO Offset: 0.00=
0000 MHz...<br>Actual RX Freq: 915.000000 MHz...<br><br>Setting RX Gain: 40.=
000000 dB...<br>Actual RX Gain: 40.000000 dB...<br><br>Setting RX Bandwidth:=
 36.000000 MHz...<br>Actual RX Bandwidth: 36.000000 MHz...<br><br>Waiting fo=
r "lo_locked": ++++++++++ locked.<br><br>Press Ctrl + C to stop streaming...=
<br>	40.0125 Msps<br>	39.9994 Msps<br>	39.9995 Msps<br>OGo=
t an overflow indication. Please consider the following:<br>&nbsp; Your writ=
e medium must sustain a rate of 160.000000MB/s.<br>&nbsp; Dropped samples wi=
ll not be written to the file.<br>&nbsp; Please modify this example for your=
 purposes.<br>&nbsp; This message will not appear again.<br>Timeout while st=
reaming<br><br>Done!<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 10:42 AM Paul Atreides &l=
t;<a href=3D"mailto:maud.dib1984@gmail.com" target=3D"_blank">maud.dib1984@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div>right on. thanks marcus. <br></div><div>i'm goin=
g to try a regular source build instead of pybombs and see if that fixes it (=
he said for the 200th time in his career). <br></div><div>i just wanted 2 de=
v environments for gnuradio and that worked really well for 3.7/3.8. if you h=
ave any suggestions i'm open to that. <br></div><div><br></div><div>i'll kee=
p you guys posted and thanks again for helping. <br></div><div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On W=
ed, Aug 11, 2021 at 10:36 AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonb=
raun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 08/11/2021 10:20 AM, Paul Atreides
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">right. i tried 4.1 first, then master then rolled
        back to 4.0. they all did the same thing.<br>
        <div>according to micheal's post above the patch is applied to
          4.0 master. the latest UHD-4.0 rev is <a href=3D"https://github.co=
m/EttusResearch/uhd/commit/0d184ff412c2710c15c0237711ab57c5033692a2" target=3D=
"_blank">here</a>
          (0d184ff)</div>
        <div>this is my output<br>
        </div>
        <div>UHD_4.0.0.0-193-g0d184ff4</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
    </blockquote>
    The patch is definitely in 4.1.0.0 and 4.1.0.1<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 11, 2021 at 10:07
          AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div bgcolor=3D"#FFFFFF">
            <div>On 08/11/2021 10:03 AM, Paul Atreides wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div dir=3D"auto">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">Ok, then what else could it be? it's
                      the identical behavior to the report ed bug.<br>
                      <br>
                      <div><span style=3D"color:rgb(0,0,0)">I have a b210
                          and b205mini and both produce this issue&nbsp;</sp=
an>
                        <div style=3D"color:rgb(0,0,0)">Both have worked
                          fine at higher sample rates in the past.&nbsp;</di=
v>
                      </div>
                      <div style=3D"color:rgb(0,0,0)"><br>
                      </div>
                      <div>My setup is&nbsp;</div>
                      <div>ubuntu20.04</div>
                      <div>UHD 4.0 (via pybombs)</div>
                      <div>GNURadio 3.9 (via pybombs)</div>
                      <br>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
            This is what Michael Dickens said:<br>
            <br>
            It was not part of the UHD 4.0.0.0 release, and has not been
            backported to the UHD-3.15-LTS (or prior) branch. - MLD<br>
            <div><br>
              You're still running 4.0.0.0 as shown in the UHD startup
              header here:<br>
              <br>
              [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
              UHD_4.0.0.0-193-g0d184ff4<br>
              <br>
              <br>
              <br>
            </div>
            <br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>
</blockquote></div>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-3A252260-A804-4264-9A33-4C788415F736--

--===============3571961458504714170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3571961458504714170==--
