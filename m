Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D70A84A7622
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 17:42:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F1EBE385279
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 11:42:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OfThc1Dc";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 976963851DA
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 11:41:35 -0500 (EST)
Received: by mail-qv1-f44.google.com with SMTP id e20so97689qvu.7
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 08:41:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=ePKoSyYtD2H75jTwHh7ccAygKrZ2nHog6iLIchkSFgo=;
        b=OfThc1DcuR4Ii2vvD1PDPozfYhglCHP37xyfnjibljjMwWAjgAZHrQxwxzN2qGmYT0
         CV6b8WwBoQytFCj2Xrbqzj+JNb4IAF8bp62Mh5eEppJ7cBEr7Hz8lIuAVt6owhKrdpbk
         jUmr39xuqKllmd0hOPwtM75RoE0/vf5ydFPMMjwXeL5warICOLRxx0BtTaviKkXiHaKB
         Nt0ZcdUc5Hn/d7q1JvyOBkaBmfMS5zCt5MMlAxPzrsn2XOzUvjMxMl/WUf7QwhytyazG
         yH946a69QeXc37D9o9+DvoOpss9wTR0Q5WX9DGHracpJUChFaMD/fbRzNc+E7+NvKfde
         2pvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=ePKoSyYtD2H75jTwHh7ccAygKrZ2nHog6iLIchkSFgo=;
        b=SrU9yo72ojoFmgRm+VvptC9+8ZZqhu3mUFxvsuPDlf5OjRPIwe3vz3aYmxLRxTBPd5
         l1rBpP6ruPP655+oERO3pQmWF/NV6qh56vJAYrk2JtOyslfERSRFMyu2hNuEImEL+EZz
         e54Lf56ehzybkruV9ExT8ECxf7SIAD0lJ9xPRTTlXS25b2TLncAx1pbvVb8hNjnl9TXs
         IeRO4ZTaCTgANEPCKpJ7zdL57wxSuVaDuC7cP6kPOi3X2Bc/Nu/+U5wXy+kCp2S/mqNw
         nh4k0p/6YAevrCgGJuKkw3pnUutbyhImpUXtojzIoYe2kLkm+xWpmKqx4VaInZ3zOBrF
         doPg==
X-Gm-Message-State: AOAM531W0N8Ee7kLpOJGXci9+izTRvVK6JczZ7/xw0zv45fl09HY8Qi3
	10NeHa1cWM/BIr+LL8StevPGQTWBEe/+aw==
X-Google-Smtp-Source: ABdhPJwed6nTvxCvQxv0RV7jXUI2tsUvrm8pz+m8wWwaEsU7HYxKb0gweHSkQu/+gqSBljkjSxLh7A==
X-Received: by 2002:a05:6214:2262:: with SMTP id gs2mr26140396qvb.81.1643820094833;
        Wed, 02 Feb 2022 08:41:34 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id s34sm12438618qtc.88.2022.02.02.08.41.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 08:41:34 -0800 (PST)
Message-ID: <1586968d-0041-14f2-a708-ce6e6337765f@gmail.com>
Date: Wed, 2 Feb 2022 11:41:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MN2PR12MB33126FE573E77ACAEC631E8CB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB33126FE573E77ACAEC631E8CB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: NC6Q3N3LTYL3Z5WSHKKJLNFDHHWM7U5S
X-Message-ID-Hash: NC6Q3N3LTYL3Z5WSHKKJLNFDHHWM7U5S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Frequency Tuning Questions
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NC6Q3N3LTYL3Z5WSHKKJLNFDHHWM7U5S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1718070340086008047=="

This is a multi-part message in MIME format.
--===============1718070340086008047==
Content-Type: multipart/alternative;
 boundary="------------QjS2l0U30F36b4za7xhIpo13"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------QjS2l0U30F36b4za7xhIpo13
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-02 10:43, Jim Palladino wrote:
> Hello,
>
> I'm working on a frequency scanning app where I need to maximize the=20
> tuning speed. I've been playing with timed commands -- I'm having=20
> issues with that and have posted about that separately. But I have=20
> some questions regarding RX tuning.
>
> I'm currently using an E320 and UHD 4.1 and developing a C++ scanning=20
> app. My first question is related to the set_rx_freq() command. If I=20
> look at the documentation here:
> https://files.ettus.com/manual/page_general.html#general_tuning_rfsettl=
ing
>
> It implies that you need to wait and check the lo_locked sensor after=20
> tuning if you want to make sure that the LO is really locked. This=20
> tells me that the set_rx_freq() command does not block and wait until=20
> it locks. I want to make sure that this is the case, as if I send=20
> consecutive get_time_now() commands, the responses are somewhere=20
> around 2ms apart. If I send the following series of commands:=20
> get_time_now(), set_rx_freq(), get_time_now -- then the time=20
> difference between get_time_now() responses is over 100ms. So, it=20
> seems that the set_rx_freq() command takes quite a while to return. I=20
> just want to confirm that it is not blocking and waiting for lock=20
> before returning. This leads to my second question.
>
> On the E320, I list the sensors using=20
> "usrp->get_rx_sensor_names(ACTIVE_CHAN);" This returns the following=20
> sensors:=C2=A0ad9361_temperature,=C2=A0 rssi,=C2=A0 lo_lock. Note that =
it is=20
> "lo_lock" and not "lo_locked". I can querry "ad9361_temperature" and=20
> get a reasonable value each time. However, the "lo_lock" sensor always=20
> reports back unlocked. I use the following command to querry it:
>
> usrp->get_rx_sensor("lo_lock", ACTIVE_CHAN).to_pp_string()
>
> It doesn't matter how long I wait after tuning -- I can wait many,=20
> many seconds. If I look at the samples I'm streaming and capturing=20
> after tuning the RX LO, they look correct. If I insert a tone from a=20
> signal generator, I see it where I expect, and it looks good. At least=20
> by eyeball, it looks like the LO is locked. Similarly, if I run the=20
> "usrp_list_sensors" example application included with UHD, the results=20
> of the RX sensors are:
> -------------------------------
> | =C2=A0 =C2=A0/
> | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Sensors:
> | =C2=A0 |
> | =C2=A0 | =C2=A0 Chan 0:
> | =C2=A0 | =C2=A0 * ad9361_temperature: 66.783625 C
> | =C2=A0 | =C2=A0 * rssi: -50.75 dB
> | =C2=A0 | =C2=A0 * ad9361_lock: unlocked
> | =C2=A0 |
> | =C2=A0 | =C2=A0 Chan 1:
> | =C2=A0 | =C2=A0 * ad9361_temperature: 67.368423 C
> | =C2=A0 | =C2=A0 * rssi: -55.0 dB
> | =C2=A0 | =C2=A0 * ad9361_lock: unlocked
> -------------------------------------
> So, that is also reporting unlocked. Basically, I haven't been able to=20
> ever read that sensor and have it say: "locked".
>
> Any help understanding whether or not the set_rx_freq() command blocks=20
> until it's locked or why I can't seem to read the "lo_lock" state and=20
> see that it is locked would be appreciated.
>
> Thanks,
> Jim
>
Any device that uses the AD936x family of RFFE chips is going to be=20
"sluggish" -- at least when tuning further than 100MHz (AFAIR) from the=20
current frequency--because the
 =C2=A0 AD9361 needs a lot of "care and feeding" during tuning.

I also recall that the AD9361 doesn't really have an lo_lock indicator,=20
or if it does, the driver doesn't implement it.


--------------QjS2l0U30F36b4za7xhIpo13
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-02 10:43, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB33126FE573E77ACAEC631E8CB8279@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hello,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I'm working on a frequency scanning app where I need to maximize
        the tuning speed. I've been playing with timed commands -- I'm
        having issues with that and have posted about that separately.
        But I have some questions regarding RX tuning.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I'm currently using an E320 and UHD 4.1 and developing a C++
        scanning app. My first question is related to the set_rx_freq()
        command. If I look at the documentation here:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <a
href=3D"https://files.ettus.com/manual/page_general.html#general_tuning_r=
fsettling"
          id=3D"LPNoLPOWALinkPreview" moz-do-not-send=3D"true"
          class=3D"moz-txt-link-freetext">https://files.ettus.com/manual/=
page_general.html#general_tuning_rfsettling</a><br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        It implies that you need to wait and check the lo_locked sensor
        after tuning if you want to make sure that the LO is really
        locked. This tells me that the set_rx_freq() command does not
        block and wait until it locks. I want to make sure that this is
        the case, as if I send consecutive get_time_now() commands, the
        responses are somewhere around 2ms apart. If I send the
        following series of commands: get_time_now(), set_rx_freq(),
        get_time_now -- then the time difference between get_time_now()
        responses is over 100ms. So, it seems that the set_rx_freq()
        command takes quite a while to return. I just want to confirm
        that it is not blocking and waiting for lock before returning.
        This leads to my second question.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        On the E320, I list the sensors using
        "usrp-&gt;get_rx_sensor_names(ACTIVE_CHAN);" This returns the
        following sensors:=C2=A0ad9361_temperature,=C2=A0 rssi,=C2=A0 lo_=
lock. Note
        that it is "lo_lock" and not "lo_locked". I can querry
        "ad9361_temperature" and get a reasonable value each time.
        However, the "lo_lock" sensor always reports back unlocked. I
        use the following command to querry it:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        usrp-&gt;get_rx_sensor("lo_lock", ACTIVE_CHAN).to_pp_string()</di=
v>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        It doesn't matter how long I wait after tuning -- I can wait
        many, many seconds. If I look at the samples I'm streaming and
        capturing after tuning the RX LO, they look correct. If I insert
        a tone from a signal generator, I see it where I expect, and it
        looks good. At least by eyeball, it looks like the LO is locked.
        Similarly, if I run the "usrp_list_sensors" example application
        included with UHD, the results of the RX sensors are:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        -------------------------------</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        | =C2=A0 =C2=A0/
        <div>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Sensors: </div>
        <div>| =C2=A0 | =C2=A0 </div>
        <div>| =C2=A0 | =C2=A0 Chan 0: </div>
        <div>| =C2=A0 | =C2=A0 * ad9361_temperature: 66.783625 C</div>
        <div>| =C2=A0 | =C2=A0 * rssi: -50.75 dB</div>
        <div>| =C2=A0 | =C2=A0 * ad9361_lock: unlocked</div>
        <div>| =C2=A0 | =C2=A0 </div>
        <div>| =C2=A0 | =C2=A0 Chan 1: </div>
        <div>| =C2=A0 | =C2=A0 * ad9361_temperature: 67.368423 C</div>
        <div>| =C2=A0 | =C2=A0 * rssi: -55.0 dB</div>
        <span>| =C2=A0 | =C2=A0 * ad9361_lock: unlocked</span><br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span>-------------------------------------</span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span>So, that is also reporting unlocked. Basically, I haven't
          been able to ever read that sensor and have it say: "locked".=C2=
=A0</span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span><br>
        </span></div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Any help understanding whether or not the set_rx_freq() command
        blocks until it's locked or why I can't seem to read the
        "lo_lock" state and see that it is locked would be appreciated.</=
div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Jim</div>
      <br>
    </blockquote>
    Any device that uses the AD936x family of RFFE chips is going to be
    "sluggish" -- at least when tuning further than 100MHz (AFAIR) from
    the current frequency--because the<br>
    =C2=A0 AD9361 needs a lot of "care and feeding" during tuning.<br>
    <br>
    I also recall that the AD9361 doesn't really have an lo_lock
    indicator, or if it does, the driver doesn't implement it.<br>
    <br>
    <br>
  </body>
</html>

--------------QjS2l0U30F36b4za7xhIpo13--

--===============1718070340086008047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1718070340086008047==--
