Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C8A84BFDA
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 23:13:53 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1C203851C7
	for <lists+usrp-users@lfdr.de>; Tue,  6 Feb 2024 17:13:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1707257631; bh=b3LyCbGKnW10sD6r5SST0UyFcAy5DARASGwZ3rGkodA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DDjEwj7yGCHkE6HpQVuecRll69JdAw8kvT20+Bb+Zclf6vpiXu59OifxomCsurnie
	 efaUWjhdhrbgj8KNPKqLg3QSbzkH3I3adzz8P6YS7ZDl+gKeISbCT9rRcdUaanLWhI
	 FBYXdYkuV02oDO0SDpB3i6NY/N4yx8X3tZkQ56QftoSeeSaWEtqlvwomwkHvgmxb9m
	 dbQQDFFAzv2luHSbOJvIICZOVX45CGcJGF47wSViQk58Bk0xHJz3DPxolF/DaGnowk
	 lDpKVRbM1cokhERAuKwutBH9THfkAGYOr1Pj4QBvydAfYs+uRpZ0pUgISFwC05Eqg7
	 VmDcCs5vIBeKA==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id DA672384E80
	for <usrp-users@lists.ettus.com>; Tue,  6 Feb 2024 17:12:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BQZPVyhn";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-78574840242so141278485a.0
        for <usrp-users@lists.ettus.com>; Tue, 06 Feb 2024 14:12:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707257574; x=1707862374; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CTi2wLjNNFEtr3zhBVJQWdZIOymmDZQKsRUEp5XXQrU=;
        b=BQZPVyhn1aMEdS0jG9KQccxhLaaw9anbKmi5vMQMLv82kpiouFIzHUiYJV+Tvzrl9z
         VwiaHGCPyS66RT4bru8b2yqeU/7xiq+DFaf7/DEMH4XKplcAyAfj0pp+8iRttPCZIGos
         eWvSOVFswTK10s59apII23wIidG2aGs+qSeBtBU7xYXZ/dWeUM65Qsx2XDDRQSPE4L9/
         s/3T0E9V/kThfbrEJJNkHgjN81151akZtZdXiTtuE3MttCWJiaqFbK6VZcgGkGJ0ABVy
         S4rppu4Czyz1spO507CrOHWAr40AUQc5+QZLcgWv72sGGmp7AmvzkOXvBCkNC+hjblYf
         Bv/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707257574; x=1707862374;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CTi2wLjNNFEtr3zhBVJQWdZIOymmDZQKsRUEp5XXQrU=;
        b=o1Adgru6vuAlFTCixq+m1EfrYqziMjfzWF/0z/6RaWdkC532rMSq6Sig2JFZysI/Fu
         2QUCMqlOGs3QxHhtYbqgTcq7OkaKhXTtHWfzxAQzYOBup3HCayxDJdE7ZTrZnE2fDu1n
         7x6ZnKmvg7puhQXNBh/l7q+6DDYB0caXBYoYdDhn187MUc9R9P5wxjSUMXKfTuJNptDQ
         suVd4Y9y7Uiwcpz8ZTpm8dmfSHmJNFykv4P6wsTvAhWzM9MYG2fqwg751IkubQkWawvh
         wzkk/5cdmhwbtcYVq7x0kDiIv5RNK2E+J3eJgHJ7nHyBHomHsQoBQlULMFq5HTf3y1E5
         NNpg==
X-Gm-Message-State: AOJu0Yxbv4EzBsnUh7EEFhlwtxUqOe5QMM9bLnhmzR6bzJ9qUGW5d5hi
	pcw6SCzfhtYOH+pR482yWqprqqAzJaNZCz/IPc11j/XilWaqub/Y7zALKcwj
X-Google-Smtp-Source: AGHT+IGyWAyPoWZzulrPfruW36wWm/dlIfCquEVj+bUv41FW2hnOTRctihpg0IWbmaRcv2Sq/YtXbw==
X-Received: by 2002:ae9:f70c:0:b0:785:4408:2dfc with SMTP id s12-20020ae9f70c000000b0078544082dfcmr3329816qkg.27.1707257573885;
        Tue, 06 Feb 2024 14:12:53 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id pj47-20020a05620a1daf00b007858a9032c8sm1287169qkn.24.2024.02.06.14.12.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Feb 2024 14:12:53 -0800 (PST)
Message-ID: <1b67074f-df21-4ed2-b875-dd24a780e34c@gmail.com>
Date: Tue, 6 Feb 2024 17:12:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <ZRG7rIZIbxYmMjovRpBG6ZTithtckvTqx1zsHut5j8@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <ZRG7rIZIbxYmMjovRpBG6ZTithtckvTqx1zsHut5j8@lists.ettus.com>
Message-ID-Hash: M4WKFMWFY4WE6UOSKQPM23N34L56BSTQ
X-Message-ID-Hash: M4WKFMWFY4WE6UOSKQPM23N34L56BSTQ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Align multi-channel captures with different rx_stremers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M4WKFMWFY4WE6UOSKQPM23N34L56BSTQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5640087558627250303=="

This is a multi-part message in MIME format.
--===============5640087558627250303==
Content-Type: multipart/alternative;
 boundary="------------ODNg055K6FOdDSjX7JK6ayZa"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ODNg055K6FOdDSjX7JK6ayZa
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 06/02/2024 17:04, zackkomo@utexas.edu wrote:
>
> Hello!
>
> I am trying to do something very similar to the rx_samples_to_file=20
> example here=20
> <https://github.com/EttusResearch/uhd/blob/master/host/examples/rx_samp=
les_to_file.cpp>.=20
> In this script, if multithreading is selected, then a different call=20
> to recv_to_file spawns for each channel, which in turn creates a=20
> different rx_streamer for each channel.
>
> I modified the code to specify the uhd::time_spec_t that feeds to each=20
> stream_cmd.time_spec, outside the loop so that the streaming start=20
> time for each channel is identical.
>
> I have only tried with 2 channels so far. I have a GPS L1 signal=20
> connected to each port corresponding to my 2 channels, and I am using=20
> a USRP X410. If I capture at the same rate for both channels, I show=20
> that they start at an identical time (to the nearest ns). When I=20
> change the rate of the second channel, I then have a difference of=20
> about 732ns.
>
> The rates I choose are 9830400 Msps and 20480000 Msps. These=20
> correspond to the master clock rate of 245760000 divided by 25 and 12=20
> respectively.
>
> Does anyone have an idea as to how to align the captures?
>
> Thanks!
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
There's a timestamp associated with each sample buffer that comes back=20
from a _recv() call.=C2=A0=C2=A0 That is often used for alignment,
 =C2=A0 although with differing sample rates, alignment cannot be perfect=
.


--------------ODNg055K6FOdDSjX7JK6ayZa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 06/02/2024 17:04,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:zackkomo@utexa=
s.edu">zackkomo@utexas.edu</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:ZRG7rIZIbxYmMjovRpBG6ZTithtckvTqx1zsHut5j8@lists.ettus.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hello!</p>
      <p>I am trying to do something very similar to the
        rx_samples_to_file example <a
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/rx=
_samples_to_file.cpp"
          title=3D"" moz-do-not-send=3D"true">here</a>. In this script, i=
f
        multithreading is selected, then a different call to
        recv_to_file spawns for each channel, which in turn creates a
        different rx_streamer for each channel.<br>
        <br>
        I modified the code to specify the uhd::time_spec_t that feeds
        to each stream_cmd.time_spec, outside the loop so that the
        streaming start time for each channel is identical. </p>
      <p>I have only tried with 2 channels so far. I have a GPS L1
        signal connected to each port corresponding to my 2 channels,
        and I am using a USRP X410. If I capture at the same rate for
        both channels, I show that they start at an identical time (to
        the nearest ns). When I change the rate of the second channel, I
        then have a difference of about 732ns. </p>
      <p>The rates I choose are 9830400 Msps and 20480000 Msps. These
        correspond to the master clock rate of 245760000 divided by 25
        and 12 respectively.</p>
      <p>Does anyone have an idea as to how to align the captures?</p>
      <p>Thanks!</p>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    There's a timestamp associated with each sample buffer that comes
    back from a _recv() call.=C2=A0=C2=A0 That is often used for alignmen=
t,<br>
    =C2=A0 although with differing sample rates, alignment cannot be perf=
ect.<br>
    <br>
    <br>
  </body>
</html>

--------------ODNg055K6FOdDSjX7JK6ayZa--

--===============5640087558627250303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5640087558627250303==--
