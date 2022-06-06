Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4EC53E49F
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 15:08:06 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F24F383F5C
	for <lists+usrp-users@lfdr.de>; Mon,  6 Jun 2022 09:08:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654520885; bh=/tYnw5sG/hAehoOoeprFXYy9XDcRpmKFHEzikd5TZ8U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=GsZTxi6Li6xmGD6VX+Rzk4478Kkc46i7ymhA6EdywvBKD92q3ChyhcSS7DDoyfb9C
	 +AlfTJIXp+Y20hSNKXbM11RWcucp6sW+HCquMZYKFHDT7k6VbcFJ4dcDeaK/0wAcm9
	 FHFWdpGKBpHuMdk1A129LqXK/oQUaMH7F530Fl5LYk1R8Zje/s8C6hNFDf/SDdQfR1
	 +j270Yq1+oz12EFKWIv1fEZP9lCUyLjlIv5f21awORMvGTnIWoQ9q1pgQ70fFKcENv
	 xrqwjI7IG4O1HtzE1eG3KmbFD8wrhIDgWbN4Z0sU7VLr+qmfvIWelogAWWOG8n1W37
	 0WnAteMKMG2+w==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 23D2C383F3F
	for <usrp-users@lists.ettus.com>; Mon,  6 Jun 2022 09:06:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KFK5RZuk";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id k6so7729546qkf.4
        for <usrp-users@lists.ettus.com>; Mon, 06 Jun 2022 06:06:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=rI/79n+rYUflyL8bzeZxAuLikDKhpmlsBP8ZLEZGB38=;
        b=KFK5RZukp/w/JkQ6T/eYzf5Kp1R+tEHrVJgHogzxArPsJDcYn/Gm+k+AL0VApO6LFS
         rIa8uzTMzLGs4HD70opAkFC6QGGxIfxXLA4BS9K1HMXMkYctNECiWS/GRzukeVLD++z0
         08qFjLfshxx/tY0ocO0fixusvxA5brx6oT8XIj1xXscrlR2IhaFZ0XjdIW8c+QYskl4E
         4z+c7Dp4UFigzG9WvMUyB3JdrpDzYyHTc0rIupxwFXKq6ocpNkDzTlQOWBGy+IIhgrNh
         DNUZZaLTWaaubYuLqan2rLy/SHcI0+fy+LadnnjVFE/PXJCYi7GeaQsXdydWsLa9nJ0+
         y4IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=rI/79n+rYUflyL8bzeZxAuLikDKhpmlsBP8ZLEZGB38=;
        b=EXlt+ZSP1H8ASMWzz0Oel3KEnM7+f8i9S8i+C1UU863fJmBJryJISd8hTp8F5Wg63W
         VqIBxuKVbxcv950G1y0623Zd6DKhn3bMkh+xU5yXfdu8boeFU6nKMIJhr7tLPWglMfP/
         fVESwmVC60+6MLtLc+Fv9q9IjVrvIjN1g2tM/mI5p3kL+MBUVtDYxLI4s8ceiPDtQydf
         HeA/mf79DZ89uHLfP/iYIY0wo3VHDfCUL8b+rziMAOCvZstKccTrh93IQwcMr2h1WVwV
         xor9radfgiKLWxaZHghZEbggyeiTF6/XWcrLYNGOv86qPSqdvluhDntl8dcQBqEx9Ebz
         YbyA==
X-Gm-Message-State: AOAM531YiRdzK5KTv/EEWjL8n4/WNqA3XZokNqpsjJk9KvN6xOyOD3Mf
	bHyx0xgnunsSzKi8rk9SidLpmGnqR7Qjog==
X-Google-Smtp-Source: ABdhPJwjmse4Ofom7g9C2gjAUO65XppmRcgAUyogLKZyUZYjRdu3xBgTyxq0seOMLN8GT2beezZCKQ==
X-Received: by 2002:a05:620a:27d2:b0:6a6:8fdf:7fb5 with SMTP id i18-20020a05620a27d200b006a68fdf7fb5mr13123518qkp.13.1654520815175;
        Mon, 06 Jun 2022 06:06:55 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id e7-20020a05622a110700b0030379c46299sm10719611qty.49.2022.06.06.06.06.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jun 2022 06:06:54 -0700 (PDT)
Message-ID: <ae7246f8-7cb5-3124-fd1e-2f56a1f70900@gmail.com>
Date: Mon, 6 Jun 2022 09:06:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAHqKquzHcAQLC9rcJeCBLd0mfNFGu8MWq0ko8qupxAH0KL=VbQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAHqKquzHcAQLC9rcJeCBLd0mfNFGu8MWq0ko8qupxAH0KL=VbQ@mail.gmail.com>
Message-ID-Hash: YMWSVIK6UJQRX6F7RQKHL3CLZW3723XY
X-Message-ID-Hash: YMWSVIK6UJQRX6F7RQKHL3CLZW3723XY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: couldn't install uhd
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YMWSVIK6UJQRX6F7RQKHL3CLZW3723XY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4829064133650160772=="

This is a multi-part message in MIME format.
--===============4829064133650160772==
Content-Type: multipart/alternative;
 boundary="------------OWWVuFlZonNlGY1snZfB2EOR"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------OWWVuFlZonNlGY1snZfB2EOR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-06-06 06:17, rouba zeitoun wrote:
> Hello USRP users
>
> I am trying to install uhd on my desktop, i tried these steps:
>> $ lsb_release -a
>> $ sudo add-apt-repository ppa:ettusresearch/uhd
>> $ sudo apt-get update
>> $ sudo apt-get install libuhd-dev libuhd4.2.0 uhd-host
>> $ ldconfig -p | grep uhd
>> $ sudo add-apt-repository -y ppa:ettusresearch/uhd
>> $ sudo apt-get update
>> $ sudo apt-get install uhd-host
>>
>>
>> but when I checked that everything works with uhd:
>> $ uhd_find_devices
>> [INFO] [UHD] linux; GNU C++ version 9.4.0; Boost_107100;=20
>> UHD_4.2.0.0-0ubuntu1~focal1No UHD Devices Found
>>
>>
> How may I solve=C2=A0this?
>
> Notes: I am working on ubuntu 20.04, and my using USRP N210
>
>
>
> Best Regards
> Rouba
>
Most Linux configurations block broadcast packets for ordinary users,=20
and that's how "find_devices" finds network-attached USRPs.

If you:

uhd_usrp_probe --args addr=3D192.168.10.2


You should get back the configuration info for your USRP device,=20
assuming that you configured your network card appropriately.



--------------OWWVuFlZonNlGY1snZfB2EOR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-06-06 06:17, rouba zeitoun
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAHqKquzHcAQLC9rcJeCBLd0mfNFGu8MWq0ko8qupxAH0KL=3DVbQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hello USRP users
        <div><br>
        </div>
        <div>I am trying to install uhd on my desktop, i tried these
          steps:</div>
        <div>
          <blockquote type=3D"cite">
            <div dir=3D"ltr">
              <div>$ lsb_release -a</div>
              <div>$ sudo add-apt-repository ppa:ettusresearch/uhd</div>
              <div>$ sudo apt-get update</div>
              <div>$ sudo apt-get install=C2=A0<span class=3D"gmail-il">l=
ibuhd</span>-dev=C2=A0<span
                  class=3D"gmail-il">libuhd4</span>.2.0 uhd-host</div>
              <div>$ ldconfig -p | grep uhd</div>
              <div>$ sudo add-apt-repository -y ppa:ettusresearch/uhd</di=
v>
              <div>$ sudo apt-get update</div>
              <div>$ sudo apt-get install uhd-host</div>
            </div>
          </blockquote>
          <blockquote type=3D"cite">
            <div dir=3D"ltr">
              <div><br>
              </div>
              <div><br>
              </div>
              <div>but when I checked that everything works with uhd:</di=
v>
            </div>
          </blockquote>
          <blockquote type=3D"cite">
            <div dir=3D"ltr">
              <div>$ uhd_find_devices</div>
              <div>[INFO] [UHD] linux; GNU C++ version 9.4.0;
                Boost_107100; UHD_4.2.0.0-0ubuntu1~focal1No UHD Devices
                Found</div>
              <div><br>
              </div>
              <div><br>
              </div>
            </div>
          </blockquote>
          How may I solve=C2=A0this?</div>
        <div><br>
        </div>
        <div>Notes: I am working on ubuntu 20.04, and my using USRP N210<=
/div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div><br>
        </div>
        <div>Best Regards</div>
        <div>Rouba</div>
      </div>
      <br>
    </blockquote>
    Most Linux configurations block broadcast packets for ordinary
    users, and that's how "find_devices" finds network-attached USRPs.<br=
>
    <br>
    If you:<br>
    <br>
    uhd_usrp_probe --args addr=3D192.168.10.2<br>
    <br>
    <br>
    You should get back the configuration info for your USRP device,
    assuming that you configured your network card appropriately.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------OWWVuFlZonNlGY1snZfB2EOR--

--===============4829064133650160772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4829064133650160772==--
