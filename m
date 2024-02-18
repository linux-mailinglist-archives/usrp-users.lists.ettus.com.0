Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D845185976C
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 15:37:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8C3AF385138
	for <lists+usrp-users@lfdr.de>; Sun, 18 Feb 2024 09:37:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708267045; bh=r1vtUGRuUDggotip1rkjJXiPHeVwkfVc6dsrkp1D9GM=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=cZW8BSzCEibfZGRGDx3Le6r5EwNmwqI00xuwkamtThRf7xPiJHrdcyW9jOYubg822
	 DtJkYSMA0Kd1D1NS5Vx/OwKhsiOJKKA0Gp6dGaEvDR9OhUhlgCe2hFcFdnLSFEemna
	 HFb3WIwOk/ndbDh8J3mjGYSUQydnXlGMgNkyltFvAnuiqStoh5cAI8JICPH7KaJI4R
	 vLlclHm6Xgufsoq1qTQ4sZCBDbAhaxe8aEgGemy/DlKO1j/tjfsFetOD7qdO9LHNuw
	 vzY2qPXSAS9Km3pG6skaqUH947gIInNP8qDyEiU0qJqTk14Qb+lcshSe70r0OITUkV
	 wmeUXM15GOuUA==
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id B0AF8383CD2
	for <usrp-users@lists.ettus.com>; Sun, 18 Feb 2024 09:36:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ddkH0GSx";
	dkim-atps=neutral
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-7875a838d1eso54938485a.1
        for <usrp-users@lists.ettus.com>; Sun, 18 Feb 2024 06:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708266985; x=1708871785; darn=lists.ettus.com;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xP9P9nj8JxFP/q8VP8kR6EIIhdImOathJk9GCgtpG38=;
        b=ddkH0GSxZ5Jp9bqihObYAsTMAmxLHEv6hYwwAagIYCaaBSkmK5qRK8H2gGTeENqlAH
         2jgLf1L323brglMqu545l2c9kIpd9x9KV0bw2/I8C+clEhc4+DcyLBeteBzkUdsO9P7R
         PG+sIaVqskmwoq2xAGpTBxkHtQvF70gypGzIfXEEWTz0zKL9OwcUv2oQsPaXiqgZv0Dg
         kEttm5+y3Xx5fH3MkpcK3+mtkbUUm1HJ9bZyt+vYl16vMOASlZ2qI/PfmmVXjh0/A5Tv
         kDt+W8QDs5MR+I2fHG54S/hwkKKiY0mx3wEhtUyJOB7x8tueDYt8L5iVBeoE2bXIooz5
         VgtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708266985; x=1708871785;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xP9P9nj8JxFP/q8VP8kR6EIIhdImOathJk9GCgtpG38=;
        b=O+xiBmr6jOtqw9UpD2vgfZBf4nP8VqxrSKah3vuXZEaIN/jYFxpIiGXy1nHMaOpXuB
         ciCiKbkmuvsagQBcYFbJcEO5KfUtSqAXJXJW/wRNUG+GKZyBvptsBVw8oGcARieFHnsx
         i4U84QsQ+9nyOue4RcP2uCw0v+/tO0jHOgzsL+yc8YHOWT2KSfbTsoc0obbOau0UgTC0
         1iBWhTgJtUTu5uTfNxo5KCYFk0FQIyDyPRz143rQA21ydHA8VcbCzPToVPcrjaKQbAUC
         wXnePXZebx4s5R6j/wH6xVl9bI8Ks/B8Ik2KzwP0/xhTACC1BuEmtdyydcphfif0paRf
         lm5A==
X-Gm-Message-State: AOJu0Yy9mJoCxCc+p2AoCG0Kfpur47fHjN7i9YJk47ITOGK6SZBipJHB
	yjjPSMvAt/r/hjxNNgudYZAo7B5njL4g66CuDkVD9f9rb93nzHyK
X-Google-Smtp-Source: AGHT+IFrNaJS+vtp1FxmVhbmMh8zmASiIWrFefvT+nQS4SZTKjsoW7LWghaG/VETqUYvbA+QUnqw2A==
X-Received: by 2002:ae9:c015:0:b0:787:5c2d:2b8d with SMTP id u21-20020ae9c015000000b007875c2d2b8dmr2855324qkk.6.1708266984842;
        Sun, 18 Feb 2024 06:36:24 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id v8-20020a05620a0a8800b0078753d3f22esm1196000qkg.103.2024.02.18.06.36.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Feb 2024 06:36:24 -0800 (PST)
Message-ID: <4e44e92f-23ff-470c-9d23-0a4329513dc9@gmail.com>
Date: Sun, 18 Feb 2024 09:36:15 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jim Grubb <jimgrubb@me.com>
References: <5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com>
 <cab295b9-3b63-4cf0-a8c6-96f1c7bf7a27@gmail.com>
 <164C83CE-6546-4971-ACFA-B79657294389@me.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <164C83CE-6546-4971-ACFA-B79657294389@me.com>
Message-ID-Hash: B4ZUQZQLJ7XGCK3TNOKRM2XF34X3F4CH
X-Message-ID-Hash: B4ZUQZQLJ7XGCK3TNOKRM2XF34X3F4CH
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running uhd 4.1 and still having the issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B4ZUQZQLJ7XGCK3TNOKRM2XF34X3F4CH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3903405705405163592=="

This is a multi-part message in MIME format.
--===============3903405705405163592==
Content-Type: multipart/alternative;
 boundary="------------Qm7pWpB6vJljy94xLMdFLR1C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Qm7pWpB6vJljy94xLMdFLR1C
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 18/02/2024 00:04, Jim Grubb wrote:
> One other datapoint. =C2=A0I have a separate machine, intel NUC running=
=20
> dragonOS which comes with gnu radio pre-installed with uhd drivers.=20
> =C2=A0I=E2=80=99m getting the same result on that machine as well. =C2=A0=
It is also=20
> using 4.1
> j
This may still be a power issue.=C2=A0 Once you've tried the "Y" cable, i=
f it=20
still doesn't work then we might be dealing with
 =C2=A0 broken hardware.


>
>> On Feb 17, 2024, at 6:57=E2=80=AFPM, Marcus D. Leech=20
>> <patchvonbraun@gmail.com> wrote:
>>
>> On 17/02/2024 21:44, Jim Grubb wrote:
>>> I was able to get UHD 4.1.0.5-3 installed after removing the ppa.=20
>>> =C2=A0Unfortunately I'm still running into a problem.
>>>
>>> Any ideas would be=C2=A0appreciated.
>>> Thanks
>>> j
>>>
>>> jim@pop-os:/usr/lib/uhd/utils$ uhd_find_devices
>>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5=
-3
>>> --------------------------------------------------
>>> -- UHD Device 0
>>> --------------------------------------------------
>>> Device Address:
>>> =C2=A0 =C2=A0 serial: 3293561
>>> =C2=A0 =C2=A0 name: B205i
>>> =C2=A0 =C2=A0 product: B205mini
>>> =C2=A0 =C2=A0 type: b200
>>>
>>>
>>> jim@pop-os:/usr/lib/uhd/utils$ uhd_usrp_probe
>>> [INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107400; UHD_4.1.0.5=
-3
>>> [INFO] [B200] Detected Device: B205mini
>>> [INFO] [B200] Operating over USB 3.
>>> [ERROR] [UHD] Exception caught in safe-call.
>>> =C2=A0 in virtual b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_im=
pl()
>>> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66
>>> this->peek32(0); _async_task.reset(); -> AssertionError:=20
>>> accum_timeout < _timeout
>>> =C2=A0 in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
>>> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>>>
>>> Error: AssertionError: accum_timeout < _timeout
>>> =C2=A0 in uint64_t b200_radio_ctrl_core_impl::wait_for_ack(bool)
>>> =C2=A0 at ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228
>>>
>>>
>> The other thing that just occurred to me is that your host controller=20
>> may not be supplying enough power.=C2=A0 This should "never"
>> =C2=A0 happen these days, but you might try using one of those "Y" USB=
=20
>> cables that can provide extra power from another USB port
>> =C2=A0 to a downstream device.
>>
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------Qm7pWpB6vJljy94xLMdFLR1C
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 18/02/2024 00:04, Jim Grubb wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:164C83CE-6546-4971-ACFA-B79657294389@me.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      One other datapoint. =C2=A0I have a separate machine, intel NUC run=
ning
      dragonOS which comes with gnu radio pre-installed with uhd
      drivers. =C2=A0I=E2=80=99m getting the same result on that machine =
as well. =C2=A0It
      is also using 4.1
      <div>j<br id=3D"lineBreakAtBeginningOfMessage">
      </div>
    </blockquote>
    This may still be a power issue.=C2=A0 Once you've tried the "Y" cabl=
e,
    if it still doesn't work then we might be dealing with<br>
    =C2=A0 broken hardware.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:164C83CE-6546-4971-ACFA-B79657294389@me.com">
      <div>
        <div><br>
          <blockquote type=3D"cite">
            <div>On Feb 17, 2024, at 6:57=E2=80=AFPM, Marcus D. Leech
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonb=
raun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> wrote:</div>
            <br class=3D"Apple-interchange-newline">
            <div>
              <meta http-equiv=3D"Content-Type"
                content=3D"text/html; charset=3DUTF-8">
              <div>
                <div class=3D"moz-cite-prefix">On 17/02/2024 21:44, Jim
                  Grubb wrote:<br>
                </div>
                <blockquote type=3D"cite"
                  cite=3D"mid:5D55EFB0-EF85-4C1C-8BF8-FDDF7B39E812@me.com=
">
                  <meta http-equiv=3D"content-type"
                    content=3D"text/html; charset=3DUTF-8">
                  <div><font face=3D"Monaco">I was able to get UHD
                      4.1.0.5-3 installed after removing the ppa.
                      =C2=A0Unfortunately I'm still running into a proble=
m.</font></div>
                  <div><font face=3D"Monaco"><br>
                    </font></div>
                  <div><font face=3D"Monaco">Any ideas would
                      be=C2=A0appreciated.</font></div>
                  <div><font face=3D"Monaco">Thanks</font></div>
                  <div><font face=3D"Monaco">j</font></div>
                  <div><font face=3D"Monaco"><br>
                    </font></div>
                  <div>
                    <div><font face=3D"Monaco">jim@pop-os:/usr/lib/uhd/ut=
ils$
                        uhd_find_devices</font></div>
                    <div><font face=3D"Monaco">[INFO] [UHD] linux; GNU C+=
+
                        version 11.2.0; Boost_107400; UHD_4.1.0.5-3</font=
></div>
                    <div><font face=3D"Monaco">--------------------------=
------------------------</font></div>
                    <div><font face=3D"Monaco">-- UHD Device 0</font></di=
v>
                    <div><font face=3D"Monaco">--------------------------=
------------------------</font></div>
                    <div><font face=3D"Monaco">Device Address:</font></di=
v>
                    <div><font face=3D"Monaco">=C2=A0 =C2=A0 serial: 3293=
561</font></div>
                    <div><font face=3D"Monaco">=C2=A0 =C2=A0 name: B205i<=
/font></div>
                    <div><font face=3D"Monaco">=C2=A0 =C2=A0 product: B20=
5mini</font></div>
                    <div><font face=3D"Monaco">=C2=A0 =C2=A0 type: b200</=
font></div>
                    <div><font face=3D"Monaco"><br>
                      </font></div>
                    <div><font face=3D"Monaco"><br>
                      </font></div>
                    <div><font face=3D"Monaco">jim@pop-os:/usr/lib/uhd/ut=
ils$
                        uhd_usrp_probe</font></div>
                    <div><font face=3D"Monaco">[INFO] [UHD] linux; GNU C+=
+
                        version 11.2.0; Boost_107400; UHD_4.1.0.5-3</font=
></div>
                    <div><font face=3D"Monaco">[INFO] [B200] Detected
                        Device: B205mini</font></div>
                    <div><font face=3D"Monaco">[INFO] [B200] Operating
                        over USB 3.</font></div>
                    <div><font face=3D"Monaco">[ERROR] [UHD] Exception
                        caught in safe-call.</font></div>
                    <div><font face=3D"Monaco">=C2=A0 in virtual
                        b200_radio_ctrl_core_impl::~b200_radio_ctrl_core_=
impl()</font></div>
                    <div><font face=3D"Monaco">=C2=A0 at
                        ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:66<=
/font></div>
                    <div><font face=3D"Monaco">this-&gt;peek32(0);
                        _async_task.reset(); -&gt; AssertionError:
                        accum_timeout &lt; _timeout</font></div>
                    <div><font face=3D"Monaco">=C2=A0 in uint64_t
                        b200_radio_ctrl_core_impl::wait_for_ack(bool)</fo=
nt></div>
                    <div><font face=3D"Monaco">=C2=A0 at
                        ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228=
</font></div>
                    <div><font face=3D"Monaco"><br>
                      </font></div>
                    <div><font face=3D"Monaco">Error: AssertionError:
                        accum_timeout &lt; _timeout</font></div>
                    <div><font face=3D"Monaco">=C2=A0 in uint64_t
                        b200_radio_ctrl_core_impl::wait_for_ack(bool)</fo=
nt></div>
                    <div><font face=3D"Monaco">=C2=A0 at
                        ./host/lib/usrp/b200/b200_radio_ctrl_core.cpp:228=
</font></div>
                  </div>
                  <div><br>
                  </div>
                  <div><br>
                  </div>
                </blockquote>
                The other thing that just occurred to me is that your
                host controller may not be supplying enough power.=C2=A0 =
This
                should "never"<br>
                =C2=A0 happen these days, but you might try using one of
                those "Y" USB cables that can provide extra power from
                another USB port<br>
                =C2=A0 to a downstream device.<br>
                <br>
                <br>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a class=3D"moz-txt-link-abbrevi=
ated" href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.c=
om</a><br>
              To unsubscribe send an email to
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-u=
sers-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a><br>
            </div>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------Qm7pWpB6vJljy94xLMdFLR1C--

--===============3903405705405163592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3903405705405163592==--
