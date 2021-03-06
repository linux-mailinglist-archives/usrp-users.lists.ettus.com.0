Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1994632FC6D
	for <lists+usrp-users@lfdr.de>; Sat,  6 Mar 2021 19:12:39 +0100 (CET)
Received: from [::1] (port=58820 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lIbPp-000252-2R; Sat, 06 Mar 2021 13:12:37 -0500
Received: from mail-wm1-f48.google.com ([209.85.128.48]:42996)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1lIbPl-0001xA-Ax
 for usrp-users@lists.ettus.com; Sat, 06 Mar 2021 13:12:33 -0500
Received: by mail-wm1-f48.google.com with SMTP id
 b2-20020a7bc2420000b029010be1081172so1267633wmj.1
 for <usrp-users@lists.ettus.com>; Sat, 06 Mar 2021 10:12:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=Oar6muvS00wEwVSZP5XmrGKV+wephkRBXETkbq4JxBA=;
 b=MBPSQ/eXK2+bNL6OU0gXrGuthSTDttLfPs/ozegrlyW3RawPUyqFdm5azCWu4i/gQ8
 Y9WuCsoUm7oI785UPA1M6wpdHMSsTna8jpst6WFtWPW2ZQME0DGP5CKrertGxFRf+wD8
 NmkSusY1dhKpXojmtJYteFosB94toyy9FZue8ns+puxAUIMsdtJZnDV3G40b1hwL9DR0
 2bPafUOyg50jhCXrsER7lWdu6pXrdP9TdQRQiHIwqgZ7QxSunGECBfD/Wue45wrHXUfF
 yXmBjPhlS6yL1SaIm4aHDNBhe0sHtPV0AwlsdRngiA4DzSKDMHBRfXAks224W+s23hW9
 lqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Oar6muvS00wEwVSZP5XmrGKV+wephkRBXETkbq4JxBA=;
 b=pZSk0+5xi2LH21lleyVNNbgQ1Z0+42d2fiJMjsI0WbsJj+m7iHeWZrvAsvZR7lW0Hu
 ibQftxnMLK/YUV3SMPoT60fjrxgC164agipktXMSI6Es2uk8bZ2Z6dB/tRFZS0Ou7LvY
 j3c0ydViiYZucjLaEHPQQSw/BFJsePuxgx42YgdTgS9Fw8gVL6rxBtzlKAtsxJWG+2Bv
 QqV4r+ie9AzWiRBhMuHQdKcQ2VbqBdmD0aI9xjNel9M3DGIt3wTb1QZEJnKi/vXDmdnN
 eQc6pghHHFOk9b9lbytlV/OQCVQ4Qtt8xd6J/VesnqVwxOg7pclcQe9AfLKxaIg5Tum0
 R+sQ==
X-Gm-Message-State: AOAM531X0AuVsoAaWS1JIWFGg6vQc+zU6SnT+3VYBxtutWPqsuCNfExZ
 7vaXLS++/UxkcCQru2FL20FvTm/3z1LFOtuG0K4=
X-Google-Smtp-Source: ABdhPJyHq6KefAo3SKzn484/QuvRnms/39paJG6yiImglW1JyFNfb8mfK/nVlUg4CL8NkdewLD07kQ==
X-Received: by 2002:a1c:a543:: with SMTP id o64mr14635528wme.107.1615054312076; 
 Sat, 06 Mar 2021 10:11:52 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id f7sm7853635wmq.11.2021.03.06.10.11.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 06 Mar 2021 10:11:51 -0800 (PST)
To: Snehasish Kar <snehasish.cse@live.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MAXPR01MB2480C1EE782A502D425F89A988959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
 <614572ca-889e-8587-a226-166d8b4b33be@ettus.com>
 <MAXPR01MB2480F77DF19D08DA844BCFD288959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <24e507c1-9a62-7f06-9950-df134c9c387b@ettus.com>
Date: Sat, 6 Mar 2021 19:11:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <MAXPR01MB2480F77DF19D08DA844BCFD288959@MAXPR01MB2480.INDPRD01.PROD.OUTLOOK.COM>
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

See the tuning notes in the UHD manual. I'm assuming you're not explicitly =
setting
POLICY_MANUAL without reason!

Best regards,
Marcus

On 06.03.21 18:43, Snehasish Kar wrote:
>
> Thanks Marcus for the prompt response. Can you please help me with an exa=
mple showing
> DSP tuning. I have gone through Piotr=92s implementation, but was not abl=
e to understand
> how he was maintaining the time synchronization based on GNURadio work fu=
nction. =A0
>
> =A0
>
> Regards
>
> =A0
>
> Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986> for Win=
dows 10
>
> =A0
>
> *From: *Marcus M=FCller via USRP-users <mailto:usrp-users@lists.ettus.com>
> *Sent: *06 March 2021 23:00
> *To: *usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
> *Subject: *Re: [USRP-users] Phase synchronization after hopping
>
> =A0
>
> Hi Snehasish,
>
> you're not actually using timed commands, so there's no exact timing invo=
lved. Your usleep
> doesn't make much sense either, you shouldn't let your PC sleep while the=
 analog chain
> tune, but instead already issue the next timed command. In this situation=
, I also would
> *not* tune the RF frontend *at all*, but only use DSP tuning (maybe you'r=
e doing that, no
> idea where your "rf_freq" and "dsp_freq" come from).
>
> Piotr Krysik solved your exact problem (X310, following GSM hopping) befo=
re. I remember
> the talk he held at an OsmoDevCon some years ago, maybe look for that.
>
> Best regards,
>
> Marcus
>
> On 06.03.21 17:31, Snehasish Kar via USRP-users wrote:
> >
> > Hello everyone
> >
> > =A0
> >
> > I am trying to achieve frequency hopping in GSM using twinrx with usrp =
x310. Here I am
> > using timed command for tuning a single port across a given frequency l=
ist. During
> > hopping it stays in each frequency for 4msecs and till the time frequen=
cy hopping
> > continues, I am able to identify FCCH using phase difference. But as so=
on as the hopping
> > is over and it tunes back to the actual frequency containing the broadc=
ast channel, I am
> > not getting phase difference greater than 0 and thus not able to demodu=
late the GSM
> > burst. Can anyone please help where I am going wrong below is the snipp=
et of the code,
> > responsible for=A0 hopping.
> >
> > =A0
> >
> > Function handling hopping:
> >
> > =A0
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 uhd::tune_request_t tune_reques=
t(rf_freq);
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.rf_freq_policy =3D=
 uhd::tune_request_t::POLICY_MANUAL;
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.dsp_freq_policy =
=3D uhd::tune_request_t::POLICY_MANUAL;
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.rf_freq =3D rf_fre=
q;
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.dsp_freq =3D dsp_f=
req;
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 uhd_src->set_rx_freq(tune_reque=
st, chan_num);
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 {
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 If(verbose_lvl=3D=3D3){
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 char msg[100]=3D{0x00};
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sprintf(msg,"info: DSP =
freq: changed to channel
> > %d: %fMHz offset %fMHz", chan_num, uhd_src->get_rx_freq(chan_num)/1e6, =
dsp_freq);
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 vipl_printf(msg,error_l=
vl, __FILE__, __LINE__);
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 }
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 //uhd_src->clear_command_time();
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 usleep(110000); // allow LOs to=
 lock
> >
> > =A0
> >
> > =A0
> >
> > =A0
> >
> > Module for setting back to original frequency with broadcast:
> >
> > =A0
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 uhd_src->clear_command_time(=
);
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 uhd::tune_request_t tune_reques=
t(rf_freq, 0x00); //considering LO-Offset
> > to be zero
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.rf_freq_policy =3D=
 uhd::tune_request_t::POLICY_AUTO;
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.dsp_freq_policy =
=3D uhd::tune_request_t::POLICY_AUTO;
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 tune_request.rf_freq =3D rf_fre=
q;
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 //tune_request.dsp_freq =3D -ds=
p_freq;
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 uhd_src->set_rx_freq(tune_reque=
st, channel);
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 {
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 char msg[100]=3D{0x00};
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 sprintf(msg,"info: freq: set to channel %d: %fMHz requested
> > freq %fMHz", channel, uhd_src->get_rx_freq(channel)/1e6, rf_freq/1e6);
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 vipl_printf(msg,error_lvl, __FILE__, __LINE__);
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
> >
> > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 usleep(110000);
> >
> > =A0
> >
> > My UHD version is 3.14.0.0
> >
> > USRP: X310
> >
> > Daughter board: 2 sets of Twinrx
> >
> > OS: Debian 10
> >
> > Interface: 10gig sfp+ ethernet
> >
> > =A0
> >
> > Thanks!!
> >
> > =A0
> >
> > =A0
> >
> > Regards
> >
> > Snehasish Kar
> >
> > =A0
> >
> > Sent from Mail <https://go.microsoft.com/fwlink/?LinkId=3D550986
> <https://go.microsoft.com/fwlink/?LinkId=3D550986>> for Windows 10
> >
> > =A0
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>
>
> =A0
>

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
