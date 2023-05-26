Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F79712D07
	for <lists+usrp-users@lfdr.de>; Fri, 26 May 2023 21:05:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3FECA383BC0
	for <lists+usrp-users@lfdr.de>; Fri, 26 May 2023 15:05:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1685127901; bh=pscP/BC5sro/ZEy+EJQG/gCUCAASq+5DrTBPfiETurE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=itlJCsbJW5CkvXYrUSW2yTGCo2H9ZPpYmeUUuDJSKbBSvrMg+aIJoTzBzpuNlHx2S
	 uxKKE6Fk/ijvnjMLZYtzZcCyAmdQSruu2KEmvyVk53lUQuIzTBL0HWCjcs6bkXLFwl
	 znAT+F/gUIFlFr6ZP2KMb81vkx4h2SBkixKV5ukr+EGY7qykpfBS27OLChNTzPPAZh
	 CPEJlGrRpsVm14Cd9rAQNh/42PJ5ITHsy6HegePBG6SO3Eb9E7HOtB5ygndMW3vAP5
	 j5JiINZD0JIEXN3ImK/CORkjd8jYcrJd+G/tUpeyv7qMLqHblA+s5bixplO19O6UyT
	 Mv4OETo09cOqg==
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 876663838E8
	for <usrp-users@lists.ettus.com>; Fri, 26 May 2023 15:04:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KEDkvHm5";
	dkim-atps=neutral
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-75afeacb5e4so143343785a.3
        for <usrp-users@lists.ettus.com>; Fri, 26 May 2023 12:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685127840; x=1687719840;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GiIo3oxK7i460QtLrE+v9TTStQbMwaI0/wP5Iw1vfiM=;
        b=KEDkvHm5lUGKewYyITw6g4wmbZ1fbs1/5bPxozydr6TjddiZ81td5jZGpmiIAONRPp
         1B5TRubCmoKbfnH//dRJaJdTrVoThI/DYmSs1UhNUXT9xLv+b4ubgtHG8m/jHKVaEk1I
         etnO/ku9A51L+egqr3rMPGUvjhdj33TI5GSHK2Agkt28eryZU55WxP6OJgtmKbSRFaGU
         FkSNy+FNpqEm73bKtYL54CgLvNX5DIdCJQp68d48iRqiDqjglZ/qG69mn33jowqQaM7f
         ClcXjG0LjIU25hrjj/gHK7GLlihtp+jlLGbloT5wIMdotFshKl0GqmDAyWW9DG7cVn9A
         jwEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685127840; x=1687719840;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GiIo3oxK7i460QtLrE+v9TTStQbMwaI0/wP5Iw1vfiM=;
        b=mDTIkn84igStsmnLQPNEWB2t76ZVKwAq+OMXrl3+d3httjGdrFrIW2vRk+aKhtw4Np
         2VIVNQlwEKMriiSelvd9Quh2mUNuhB+UJkC1MkSI2SgY8yH50jbQg1vq5xKcKDm6f/ZQ
         /bE7tOftBxQwxHQ0PNphhedhQFn+hTFGjdvkxWpSVVZhqKUhPP1MyQStrfFWmvqsnky8
         mPJayIeMDt2erZgCOf9WGXpLPr0kCsZPAMXKTOdKxYIJVOcE6h9ZURB2exxOv3ehWHS+
         ZiRgh+Hf4xNsGm3AoH9GW7Y28pjUkPqCdX93MtGE8iLpzOd4TSvpnwmnkU1ne77pd/ru
         +CTg==
X-Gm-Message-State: AC+VfDzAXxe4SiVdCQnChurihzvVFJMb19PCX0YzkSxvQSDuBdZBRGd2
	qk9Q0rdbf62VDJrMGuV8dlMez6w83yXJaw==
X-Google-Smtp-Source: ACHHUZ6Qq9zbKs+kst67ZXS2w7jnxrd94dWGOov0kLIZfdsoaUq/RigPsfXlR/7OQGihTDEXU6Ckrw==
X-Received: by 2002:a05:620a:278f:b0:75b:2476:412b with SMTP id g15-20020a05620a278f00b0075b2476412bmr536722qkp.4.1685127839832;
        Fri, 26 May 2023 12:03:59 -0700 (PDT)
Received: from [192.168.2.217] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id s10-20020a05620a16aa00b0075b168fcde9sm1351426qkj.77.2023.05.26.12.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 12:03:59 -0700 (PDT)
Message-ID: <8c35be79-3e61-b671-6bf0-7c05941eb3ee@gmail.com>
Date: Fri, 26 May 2023 15:03:58 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
To: zhou <hwzhou@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com>
 <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com>
 <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM>
 <936520968.215976.1684620209911@mail.yahoo.com>
 <3a73567e-d3c6-83cc-b3ac-0004226581b0@gmail.com>
 <17799965.336600.1684709874320@mail.yahoo.com>
 <d8fd2fe9-5449-e2b4-452e-4453045bb21e@gmail.com>
 <593975973.1685186.1685124691584@mail.yahoo.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <593975973.1685186.1685124691584@mail.yahoo.com>
Message-ID-Hash: 3Z4K6RTNFJADGIM7G2ATVTMNMMYCPJMY
X-Message-ID-Hash: 3Z4K6RTNFJADGIM7G2ATVTMNMMYCPJMY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Receive with UHD4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3Z4K6RTNFJADGIM7G2ATVTMNMMYCPJMY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5597179066179068509=="

This is a multi-part message in MIME format.
--===============5597179066179068509==
Content-Type: multipart/alternative;
 boundary="------------0RJT2mOP0J002j8FYLD1P30C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0RJT2mOP0J002j8FYLD1P30C
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/05/2023 14:11, zhou wrote:
> Hi Marcus,
>
> Sorry for the late response.
> My system setup:
> - UHD 4.4
> - Ubuntu 22.04 server version
> - USRP: X310
>
> The capture code:
> uhd::usrp::multi_usrp::sptr usrp =3D=20
> uhd::usrp::multi_usrp::make("addr=3D192.168.12.2,=20
> second_addr=3D192.168.13.2, master_clock_rate=3D184.32e6");
> uhd::stream_args_t stream_args_rx("sc16", "sc16");
> stream_args_rx.channels.push_back(0);
> stream_args_rx.channels.push_back(1);
> uhd::rx_streamer::sptr rx_stream =3D usrp->get_rx_stream(stream_args_rx=
);
> uhd::stream_cmd_t=20
> stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
> stream_cmd.num_samps =3D num_requested_samples;
> stream_cmd.stream_now =3D false;
> stream_cmd.time_spec =3D uhd::time_spec_t(ul_time_spec);
> rx_stream->issue_stream_cmd(stream_cmd);
> size_t num_rx_samps;
> unsigned long num_total_samps =3D 0;
> while(num_requested_samples !=3D num_total_samps)
> {
> =C2=A0 =C2=A0num_rx_samps =3D rx_stream->recv(buff, num_requested_sampl=
es, md, 5.0);
> =C2=A0 =C2=A0num_total_samps +=3D num_rx_samps;
> }
>
> If I capture exactly num_requested_samples, then the final part of the=20
> capture will not be good. I have to capture 1ms more. In UHD 3.10, I=20
> don't see this problem.
>
> Thanks for any feedback.
>
>
I don't see where you set the sample rate--what is your sample rate?

Can you perhaps share a time-domain plot of the last samples in the case=20
where it doesn't work right?


--------------0RJT2mOP0J002j8FYLD1P30C
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/05/2023 14:11, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:593975973.1685186.1685124691584@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydp361dbc4yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Sorry for the late respons=
e.</div>
        <div dir=3D"ltr" data-setdir=3D"false">My system setup:=C2=A0</di=
v>
        <div dir=3D"ltr" data-setdir=3D"false">- UHD 4.4</div>
        <div dir=3D"ltr" data-setdir=3D"false">- Ubuntu 22.04 server vers=
ion</div>
        <div dir=3D"ltr" data-setdir=3D"false">- USRP: X310<br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">The capture code:</div>
        <div dir=3D"ltr" data-setdir=3D"false">
          <div>
            <div>uhd::usrp::multi_usrp::sptr usrp =3D
              uhd::usrp::multi_usrp::make("addr=3D192.168.12.2,
              second_addr=3D192.168.13.2, master_clock_rate=3D184.32e6");=
</div>
            <div>uhd::stream_args_t stream_args_rx("sc16", "sc16");</div>
            <div>stream_args_rx.channels.push_back(0);</div>
            <div>stream_args_rx.channels.push_back(1);</div>
            <div>uhd::rx_streamer::sptr rx_stream =3D
              usrp-&gt;get_rx_stream(stream_args_rx);</div>
            <div>uhd::stream_cmd_t
              stream_cmd(uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DON=
E);</div>
            <div>stream_cmd.num_samps =3D num_requested_samples;</div>
            <div>stream_cmd.stream_now =3D false;</div>
            <div>stream_cmd.time_spec =3D uhd::time_spec_t(ul_time_spec);=
</div>
            <div>rx_stream-&gt;issue_stream_cmd(stream_cmd);</div>
            <div>size_t num_rx_samps;</div>
            <div>unsigned long num_total_samps =3D 0;</div>
            <div>while(num_requested_samples !=3D num_total_samps)</div>
            <div>{</div>
            <div>=C2=A0 =C2=A0num_rx_samps =3D rx_stream-&gt;recv(buff,
              num_requested_samples, md, 5.0);</div>
            <div>=C2=A0 =C2=A0num_total_samps +=3D num_rx_samps;</div>
            <div>}</div>
          </div>
          <br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"color=
:
              rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica,
              Arial, sans-serif;">If I capture exactly
              num_requested_samples, then the final part of the capture
              will not be good. I have to capture 1ms more. In UHD 3.10,
              I don't see this problem.</span></span><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for any feedback.</=
div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <br>
      </div>
    </blockquote>
    I don't see where you set the sample rate--what is your sample rate?<=
br>
    <br>
    Can you perhaps share a time-domain plot of the last samples in the
    case where it doesn't work right?<br>
    <br>
    <br>
  </body>
</html>

--------------0RJT2mOP0J002j8FYLD1P30C--

--===============5597179066179068509==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5597179066179068509==--
