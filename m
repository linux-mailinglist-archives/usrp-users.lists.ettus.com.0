Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5072B407183
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 20:54:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A086384807
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 14:54:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iI437295";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A6231384440
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 14:53:15 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id a66so3116798qkc.1
        for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 11:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=slxrvt6GaO5gypdSlkrF6UAvwTmNdFCOVTY7u44USqY=;
        b=iI437295mwWR0CE5ZCk6fTfUQnYRUDaBcQZQsBfLxMTtmwOQAb2jT5wyzY44qtnUn4
         MEtzQI6PuHy12RYFrAgRnw2UDIcrHGlAH1Hnx74X+zGz79N+1KuRpE6oPG9+dVZGo1dB
         Aa3B8xh8sWOwID9FBIJQjPZRi6M7BP9PPldalHz/e05P/qff37ANWoD4XMnIXl5+4DyR
         Up+Xgdks2YSbWXmvxaMZXnRqwrSjD4ccjWHbbjHccGuOx4aAzy0yHPr9a22z4Xszu1xp
         twUHv8FKdZfEdk33KpywZ3LSm7phin5K7YWkVXNSW36vlPGA4MNjlhZIvDVXevoc37P4
         V6Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=slxrvt6GaO5gypdSlkrF6UAvwTmNdFCOVTY7u44USqY=;
        b=XMITNY57v7cLkWyBRUi0WdKkQ19Sb5rS7AUURy41TOIoDEchu3lk83s7Dsx4IlLswi
         x/wJqeQJgja9MTAQyZHjhpU8s4YWC0OvgxKeMbhMrZKqWP92FEhSfg+MFeT76+isQqqh
         G2b5Cz16EuF3sqv+NLiXjFD9j4KI2BgHTGNhur6wcJrNK/BvhQHNDrfJvgmoPgSGVYCv
         UVmc1R33Gu0EWc8y4UFrxwyA/7zF25JuI5Oo2I1Qw7MX4xAHvlRIf+/OT1Kei3Qj5upX
         ipgolzfXnlfwZFu8CZPhmtmWcWjPCCcd+lGfXCIVJwgUzyzPoNeiHBKQHcApc5guGMQF
         PDyQ==
X-Gm-Message-State: AOAM531hq/OwJialEKzXp1YHQ5Apg2GoXxNk5AX1ad9+ZLWjflPcKHmp
	ig6Gp5U4fSOmZtEL7+yDAo43x+sDjJnpPA==
X-Google-Smtp-Source: ABdhPJwRcYUyXqCeNai7UBfh4NARUzb8TISzJ1c1UZWh0jUON/0G7VLANgcuL2NF/Ni7r4ENPyRX6Q==
X-Received: by 2002:ae9:e603:: with SMTP id z3mr9265889qkf.413.1631299994936;
        Fri, 10 Sep 2021 11:53:14 -0700 (PDT)
Received: from [192.168.2.248] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id b19sm4299526qkc.7.2021.09.10.11.53.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Sep 2021 11:53:14 -0700 (PDT)
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es>
 <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com>
 <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com>
 <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com>
 <804336125.2658048.1631299169124@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <32b873e4-404d-2b27-61d9-2dd53fd0689a@gmail.com>
Date: Fri, 10 Sep 2021 14:53:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <804336125.2658048.1631299169124@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: 3D6C7RF76SIHBR6KQATCQEGKEL6OAVXJ
X-Message-ID-Hash: 3D6C7RF76SIHBR6KQATCQEGKEL6OAVXJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3D6C7RF76SIHBR6KQATCQEGKEL6OAVXJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8134378270368178241=="

This is a multi-part message in MIME format.
--===============8134378270368178241==
Content-Type: multipart/alternative;
 boundary="------------F0CCF385A0620CD844EFDEF7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F0CCF385A0620CD844EFDEF7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-09-10 2:39 p.m., zhou wrote:
> Hi,
>
> I am trying to increase the buffer size in tx.
>
> According to https://files.ettus.com/manual/page_transport.html=20
> <https://files.ettus.com/manual/page_transport.html>,
>
> =C2=A0it seems that we can change the default *send_buff_size *by=20
> specifying value in device arguments. I tried the following configurati=
on:
> uhd::usrp::multi_usrp::make('addr=3D192.168.12.2,=20
> second_addr=3D192.168.13.2, mgmt_addr=3D192.168.10.16,=20
> master_clock_rate=3D245.76e6, type=3Dn3xx, *send_buff_size*=3D33554432'=
)
>
> But this didn't have any impact. I measured that the actual buffer is=20
> always about ~1MB.
How did you measure the buffer?


>
> Then in UHD library, I find the following limit:
> static const size_t MAX_BUFF_SIZE_ETH_MACOS =3D 0x100000; // 1Mib
>
> =C2=A0 =C2=A0 if (link_params.send_buff_size > MAX_BUFF_SIZE_ETH_MACOS)=
 {
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 link_params.send_buff_size =3D MAX_BUFF_SIZ=
E_ETH_MACOS;
> =C2=A0 =C2=A0 }
>
Are you on MacOS?=C2=A0=C2=A0 If not, that code isn't relevant.=C2=A0 Tha=
t code doesn't=20
even get compiled unless you're
 =C2=A0 on MacOS.

> 33554432 > 1048576 (1Mib), so this may be why the above config didn't=20
> work. Then I tried the following configuration:
> uhd::usrp::multi_usrp::make('addr=3D192.168.12.2,second_addr=3D192.168.=
13.2,mgmt_addr=3D192.168.10.16,master_clock_rate=3D245.76e6,type=3Dn3xx,*=
send_buff_size*=3D524288')
>
> This one didn't have any impact either.
> So, am I wrong in configuring *send_buff_size *in this way? what is=20
> the correct way?
>
> 1M buffer size is too small for my application. I am using sampling=20
> rate 245.76MHz. This buffer can only save data up to 0.5ms. I want to=20
> allocate a bigger buffer to achieve better reliability.
>
> Thanks for any comment.
>
>
>
>


--------------F0CCF385A0620CD844EFDEF7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-09-10 2:39 p.m., zhou wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:804336125.2658048.1631299169124@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpa2579362yahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><span>Hi,</span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><br>
          </span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span>I am trying to incre=
ase
            the buffer size in tx.</span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><br>
          </span></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span>According to=C2=A0</=
span><a
            href=3D"https://files.ettus.com/manual/page_transport.html"
            rel=3D"nofollow" target=3D"_blank" class=3D""
            moz-do-not-send=3D"true">https://files.ettus.com/manual/page_=
transport.html</a>,=C2=A0</div>
        <div><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">=C2=A0it seems that we can=
 change
          the default=C2=A0<span><span style=3D"color: rgb(0, 0, 0);
              font-family: Helvetica Neue, Helvetica, Arial,
              sans-serif;"><b>send_buff_size </b>by specifying value in
              device arguments. I tried the following configuration:</spa=
n></span></div>
        <div dir=3D"ltr" data-setdir=3D"false"> <span>uhd::usrp::multi_us=
rp::make(</span>'addr=3D192.168.12.2,
          second_addr=3D192.168.13.2, mgmt_addr=3D192.168.10.16,
          master_clock_rate=3D245.76e6, type=3Dn3xx,=C2=A0<b>send_buff_si=
ze</b>=3D33554432')<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span><span
                style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue=
,
                Helvetica, Arial, sans-serif;">But this didn't have any
                impact. I measured that the actual buffer is always
                about ~1MB.</span></span></span></div>
      </div>
    </blockquote>
    How did you measure the buffer?<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:804336125.2658048.1631299169124@mail.yahoo.com">
      <div class=3D"ydpa2579362yahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><span><span><span
                style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue=
,
                Helvetica, Arial, sans-serif;"><br>
              </span></span></span></div>
        <div dir=3D"ltr" data-setdir=3D"false">Then in UHD library, I fin=
d
          the following limit:<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><span>
            <div>
              <div dir=3D"ltr" data-setdir=3D"false">
                <div>
                  <div dir=3D"ltr" data-setdir=3D"false" style=3D"color:
                    rgb(0, 0, 0); font-family: Helvetica Neue,
                    Helvetica, Arial, sans-serif;">static const size_t
                    MAX_BUFF_SIZE_ETH_MACOS =3D 0x100000; // 1Mib</div>
                  <div><br>
                  </div>
                </div>
                =C2=A0 =C2=A0 if (link_params.send_buff_size &gt;
                MAX_BUFF_SIZE_ETH_MACOS) {</div>
              <div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 link_params.send_buff_size=
 =3D
                MAX_BUFF_SIZE_ETH_MACOS;</div>
              <div>=C2=A0 =C2=A0 }</div>
              <div dir=3D"ltr" data-setdir=3D"false"><br>
              </div>
            </div>
          </span></div>
      </div>
    </blockquote>
    Are you on MacOS?=C2=A0=C2=A0 If not, that code isn't relevant.=C2=A0=
 That code
    doesn't even get compiled unless you're<br>
    =C2=A0 on MacOS.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:804336125.2658048.1631299169124@mail.yahoo.com">
      <div class=3D"ydpa2579362yahoo-style-wrap" style=3D"font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><span>
            <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"c=
olor:
                  rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica,
                  Arial, sans-serif;">33554432 &gt; <span>1048576 (</span=
>1Mib),
                  so this may be why the above config didn't work. Then
                  I tried the following configuration:</span></span><br>
            </div>
            <div dir=3D"ltr" data-setdir=3D"false">
              <div>
                <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rg=
b(0,
                  0, 0); font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;">uhd::usrp::multi_usrp::make('addr=3D192.16=
8.12.2,second_addr=3D192.168.13.2,mgmt_addr=3D192.168.10.16,master_clock_=
rate=3D245.76e6,type=3Dn3xx,<b>send_buff_size</b>=3D524288')<br>
                </div>
                <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rg=
b(0,
                  0, 0); font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;"><br>
                </div>
                <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rg=
b(0,
                  0, 0); font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;">This one didn't have any impact either.</d=
iv>
                <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rg=
b(0,
                  0, 0); font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;">So, am I wrong in configuring=C2=A0<span><=
span
                      style=3D"color: rgb(0, 0, 0); font-family: Helvetic=
a
                      Neue, Helvetica, Arial, sans-serif;"><b>send_buff_s=
ize
                      </b>in this way? what is the correct way?</span></s=
pan></div>
                <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rg=
b(0,
                  0, 0); font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;"><span><span style=3D"color: rgb(0, 0, 0);
                      font-family: Helvetica Neue, Helvetica, Arial,
                      sans-serif;"><br>
                    </span></span></div>
                <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rg=
b(0,
                  0, 0); font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;"><span><span style=3D"color: rgb(0, 0, 0);
                      font-family: Helvetica Neue, Helvetica, Arial,
                      sans-serif;">1M buffer size is too small for my
                      application. I am using sampling rate 245.76MHz.
                      This buffer can only save data up to 0.5ms. I want
                      to allocate a bigger buffer to achieve better
                      reliability.</span></span></div>
                <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rg=
b(0,
                  0, 0); font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;"><span><span style=3D"color: rgb(0, 0, 0);
                      font-family: Helvetica Neue, Helvetica, Arial,
                      sans-serif;"><br>
                    </span></span></div>
                <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rg=
b(0,
                  0, 0); font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;"><span><span style=3D"color: rgb(0, 0, 0);
                      font-family: Helvetica Neue, Helvetica, Arial,
                      sans-serif;">Thanks for any comment.</span></span><=
/div>
                <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rg=
b(0,
                  0, 0); font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;"><span><span style=3D"color: rgb(0, 0, 0);
                      font-family: Helvetica Neue, Helvetica, Arial,
                      sans-serif;"><br>
                    </span></span></div>
                <div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rg=
b(0,
                  0, 0); font-family: Helvetica Neue, Helvetica, Arial,
                  sans-serif;"><br>
                </div>
                <div><br>
                </div>
              </div>
              <br>
            </div>
          </span></div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------F0CCF385A0620CD844EFDEF7--

--===============8134378270368178241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8134378270368178241==--
