Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D60D32FC4A
	for <lists+usrp-users@lfdr.de>; Sat,  6 Mar 2021 18:30:58 +0100 (CET)
Received: from [::1] (port=58570 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lIalT-00009F-CO; Sat, 06 Mar 2021 12:30:55 -0500
Received: from mail-wm1-f43.google.com ([209.85.128.43]:40577)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1lIalP-0008SW-M6
 for usrp-users@lists.ettus.com; Sat, 06 Mar 2021 12:30:51 -0500
Received: by mail-wm1-f43.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so1260386wmy.5
 for <usrp-users@lists.ettus.com>; Sat, 06 Mar 2021 09:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=EDUxrVg3XRdTC7jmkTO70iViA7A1f8YM+pJ/inuiMHI=;
 b=IDHJtPydQPu0I/kZM3EZ/vbeBjCgrw5OaMIbOIe9Q+Q8DI85cr3JQQCSadOcymHd1E
 toFpUgrte4NpCrAOK6N+i7POU+AqOtGakGtV6czDqhFyroEeVrjgJGfc/Q6whazPfqCr
 bKGHiu1gqh1MsuftqISKAjH5vGJqHlEnpC6DKxFxxCmztp4wggAIhnuHhQiLdEhqZoN3
 tThUnQTxDUK/GMipeSFXuNdHEi8X/qlZMtsVaIdZKR0+ecB6C3n2w4wAe+6ZZk3OFtNr
 4p003T6qSD22+8U64R3VHJXxtInJAgY0k0snLfIIHyG1xy6T4j98FgS2qKrXlJ4tBenU
 bnQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=EDUxrVg3XRdTC7jmkTO70iViA7A1f8YM+pJ/inuiMHI=;
 b=ZJGhjs+v72WlnKVlEVo4WRnggwNhiBGkjwWqtIpx4t6X7E8v3xtzdyGariOKYhIVae
 V1K0qZDue/EVaGxzlZ6KXizoxnfIJHZRQCiWNO+hBnAfmDL1oxrlMyM1i8hxIa78/RN1
 2AYAg8jg6/KTHCzvpukdkpQu107HQqE9aOsphlZiaNkzeTPXOu5WB9XgRBkl4WdPtRkt
 A8rLCknYhClLRmpY63oN9QeyNJ7PcUuhWU9jPV5x8yLQOP1lyzbWAJR96lPEXUecI46u
 4oIV0Sx4C5ukpXVpBbKSyY714S2v7zq3NYvtKJ0Csb9WV55BDUKncAqIJQLQZCSidOBS
 YtGw==
X-Gm-Message-State: AOAM5332EloAkofCq0lP9cO4Y9JIjKi+oUFicaNWZY9G42void8laKoB
 STxrKyzPVUL9PJ0JXsdhalW0ivC4PovStO9cTCs=
X-Google-Smtp-Source: ABdhPJzi6lRoxfirpREmItTXrxR4+fjJgVz3/urW3EKV5zwqX8k/uYjiv6g58gmZN2rLp2nPsIUSfw==
X-Received: by 2002:a1c:9a47:: with SMTP id c68mr14096638wme.63.1615051810366; 
 Sat, 06 Mar 2021 09:30:10 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id 12sm9961708wmw.43.2021.03.06.09.30.09
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 06 Mar 2021 09:30:09 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <MAXPR01MB2480C1EE782A502D425F89A988959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <614572ca-889e-8587-a226-166d8b4b33be@ettus.com>
Date: Sat, 6 Mar 2021 18:30:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <MAXPR01MB2480C1EE782A502D425F89A988959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
Subject: Re: [USRP-users] Phase synchronization after hopping
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

Hi Snehasish,

you're not actually using timed commands, so there's no exact timing involv=
ed. Your usleep
doesn't make much sense either, you shouldn't let your PC sleep while the a=
nalog chain
tune, but instead already issue the next timed command. In this situation, =
I also would
*not* tune the RF frontend *at all*, but only use DSP tuning (maybe you're =
doing that, no
idea where your "rf_freq" and "dsp_freq" come from).

Piotr Krysik solved your exact problem (X310, following GSM hopping) before=
. I remember
the talk he held at an OsmoDevCon some years ago, maybe look for that.

Best regards,

Marcus

On 06.03.21 17:31, Snehasish Kar via USRP-users wrote:
>
> Hello everyone
>
> =A0
>
> I am trying to achieve frequency hopping in GSM using twinrx with usrp x3=
10. Here I am
> using timed command for tuning a single port across a given frequency lis=
t. During
> hopping it stays in each frequency for 4msecs and till the time frequency=
 hopping
> continues, I am able to identify FCCH using phase difference. But as soon=
 as the hopping
> is over and it tunes back to the actual frequency containing the broadcas=
t channel, I am
> not getting phase difference greater than 0 and thus not able to demodula=
te the GSM
> burst. Can anyone please help where I am going wrong below is the snippet=
 of the code,
> responsible for=A0 hopping.
>
> =A0
>
> Function handling hopping:
>
> =A0
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 uhd::tune_request_t tune_request(=
rf_freq);
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.rf_freq_policy =3D u=
hd::tune_request_t::POLICY_MANUAL;
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.dsp_freq_policy =3D =
uhd::tune_request_t::POLICY_MANUAL;
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.rf_freq =3D rf_freq;
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.dsp_freq =3D dsp_fre=
q;
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 uhd_src->set_rx_freq(tune_request=
, chan_num);
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 {
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 If(verbose_lvl=3D=3D3){
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 char msg[100]=3D{0x00};
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sprintf(msg,"info: DSP fre=
q: changed to channel
> %d: %fMHz offset %fMHz", chan_num, uhd_src->get_rx_freq(chan_num)/1e6, ds=
p_freq);
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 vipl_printf(msg,error_lvl,=
 __FILE__, __LINE__);
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 }
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 //uhd_src->clear_command_time();
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 usleep(110000); // allow LOs to l=
ock
>
> =A0
>
> =A0
>
> =A0
>
> Module for setting back to original frequency with broadcast:
>
> =A0
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 uhd_src->clear_command_time();
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 uhd::tune_request_t tune_request(=
rf_freq, 0x00); //considering LO-Offset
> to be zero
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.rf_freq_policy =3D u=
hd::tune_request_t::POLICY_AUTO;
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.dsp_freq_policy =3D =
uhd::tune_request_t::POLICY_AUTO;
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.rf_freq =3D rf_freq;
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 //tune_request.dsp_freq =3D -dsp_=
freq;
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 uhd_src->set_rx_freq(tune_request=
, channel);
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 {
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 char msg[100]=3D{0x00};
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 sprintf(msg,"info: freq: set to channel %d: %fMHz requested
> freq %fMHz", channel, uhd_src->get_rx_freq(channel)/1e6, rf_freq/1e6);
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 vipl_printf(msg,error_lvl, __FILE__, __LINE__);
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 usleep(110000);
>
> =A0
>
> My UHD version is 3.14.0.0
>
> USRP: X310
>
> Daughter board: 2 sets of Twinrx
>
> OS: Debian 10
>
> Interface: 10gig sfp+ ethernet
>
> =A0
>
> Thanks!!
>
> =A0
>
> =A0
>
> Regards
>
> Snehasish Kar
>
> =A0
>
> Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986> for Win=
dows 10
>
> =A0
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
