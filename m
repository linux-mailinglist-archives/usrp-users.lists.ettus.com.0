Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4A373D48D
	for <lists+usrp-users@lfdr.de>; Sun, 25 Jun 2023 23:29:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46945383C7B
	for <lists+usrp-users@lfdr.de>; Sun, 25 Jun 2023 17:29:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1687728579; bh=n2JLAvfO/T1lr8palvlKIi7EYJrtsBEmdrLFtCDiIYk=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=j7Z2uZcYTb8x5SGcFSj0FQTdWn7jHcQzb07rulGcv22PlWdMRuPVmhOjZF5t2GQgy
	 YEIKt3xmOyLrgqAoNdyRNkFgu0sxqQvjhNR/SDpIYhOt3FTbjf4UpGvQX59oZs0fTh
	 7tqH1+XSSFUpirbdvK8Ss/uSwNWOYtZpWI9Ye+EGoEdASNNZmOE/4lg5CiSxzHqEAJ
	 /3mKN8gYhvoYWma/CrUr16g1Pn0gN8vKtrXCv6SwBbsn7H9rDPNg1G8wStb33qBUj0
	 Ag+TcdBBZ8264suWKtlten4I8288i6SLCQK0EUl+nyqfq6RN4hjhq3Z6o6Mwx04Fv8
	 UoL8c57E72Wxw==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D11FA383809
	for <usrp-users@lists.ettus.com>; Sun, 25 Jun 2023 17:28:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YR9XSBzK";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-76531f6ae6aso220458185a.0
        for <usrp-users@lists.ettus.com>; Sun, 25 Jun 2023 14:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687728523; x=1690320523;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pS2HaBIb1oGMw99yvUjN/leCzMIl34pqPc2FN6eHt0Q=;
        b=YR9XSBzKl7e4K4GItrRoxc8k8ErASNDuUQ1oOdt+k8SQ/38DiBf7c1fMP/tLyRhdau
         J/ZFzAG/WQiEbx054Gbpp+HFjQ3SnyEFqiSpH7gSIUAfVLiBupZ54YMZU0dZ+zGhwFA8
         wyq2gYqiu27ofoxmdDF2ApTi59dmuxs80K84q3WPO3Ag7OLNciYcE555PcD2rGfiFh53
         /LjdYS7ufHxvDW0keAwF8f5hK0HdXgKeBGKDtXEp3XNpk3f97XuhLxfqTMw0iUCn8y3X
         AUACZwuxq4g9jtJSBRILAr7gdn5xp2ddJeodpCGQTRaBM4TbJwQTOS8iIrT7GmKos8af
         zLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687728523; x=1690320523;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pS2HaBIb1oGMw99yvUjN/leCzMIl34pqPc2FN6eHt0Q=;
        b=ITC+yRkstzMpKZKPZzky5g7LLaCox7Fqno6mqnAtKq89hQBAg91JJInktq0u1N6Gfj
         TLc6NQkDJlx9AvTgzynpsi6Y7dt+//mWf67dLydTf+1s55CtQV+ItQ26c4uDmxkozh/8
         7d0B0VILhEbgY9Plpvk00gCwdy62Ax2JMCt4B6GSglyqsseU7bxpPEpT70tCMNs7Jh01
         lMn4XDm9D9ee+nN0EqiZ+dD4ugpb3zRtdaeYgCx67NKDxwInxvWYjNCO0q4kHO/ObiLn
         xkUgBRJEHu29XP2wfhO8Ai2dJpuxBl7rYPC6ODNMIgR+KWaeUEnJbKB3XlnfzHQm+S7g
         qwUg==
X-Gm-Message-State: AC+VfDyEipeYvXQfdmSR16f5HaVpebfBMam2jSntdORiRgWUigNcj8Nj
	dY6XpMKkjoTZ9wLtNnqAek4=
X-Google-Smtp-Source: ACHHUZ6YQSSH/0267UBo4jtPRGqPg5gtx97lz4aWwxpul5vMaVgwmt1o8SVLOeVKxcIZYIQvcbP+pw==
X-Received: by 2002:a05:620a:25cd:b0:765:6782:cafd with SMTP id y13-20020a05620a25cd00b007656782cafdmr4356828qko.69.1687728522967;
        Sun, 25 Jun 2023 14:28:42 -0700 (PDT)
Received: from [192.168.2.171] ([174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id f19-20020ae9ea13000000b007592174cb08sm1994924qkg.10.2023.06.25.14.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jun 2023 14:28:42 -0700 (PDT)
Message-ID: <11ffaa69-3ae5-bd0f-8570-dc0caf48912f@gmail.com>
Date: Sun, 25 Jun 2023 17:28:37 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>, support@ettus.com,
 usrp-users@lists.ettus.com, discuss-gnuradio@gnu.org
References: <CA+QP_P=kMBqVSfi7ktJdrayHEjMWxu0SK-1jpgJx3ho2=fxOJQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CA+QP_P=kMBqVSfi7ktJdrayHEjMWxu0SK-1jpgJx3ho2=fxOJQ@mail.gmail.com>
Message-ID-Hash: ML6Z6MMNLEZJ7MFXQ6YAK7K7PIYOVJZW
X-Message-ID-Hash: ML6Z6MMNLEZJ7MFXQ6YAK7K7PIYOVJZW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Karunya Choppara <kchoppar@mathworks.com>, Mike McLernon <mmclerno@mathworks.com>, Houman Zarrinkoub <hzarrink@mathworks.com>, Sathish Varala <sathishv@mathworks.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Help Regarding Transmitting Gain of USRP N-200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ML6Z6MMNLEZJ7MFXQ6YAK7K7PIYOVJZW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6781591878938471974=="

This is a multi-part message in MIME format.
--===============6781591878938471974==
Content-Type: multipart/alternative;
 boundary="------------9ceCDNk0EgssVV3tOw006CaD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9ceCDNk0EgssVV3tOw006CaD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 25/06/2023 16:49, Arhum Ahmad wrote:
> Respected sir,
> I am using N-200 USRP for transmitting a signal. While transmitting, I=20
> havechangedthe Gain value in the SDRutransmitting block, but my signal=20
> strength at the receiver remains=C2=A0the same. I also stop and restart=
 the=20
> code but the change in gain does not affect the received signal. I=20
> have tried the changing gain via both available options i.e., input=20
> port and dialog, but it seems to have no effecton the receiver. The=20
> signal strength at the receiver remains=C2=A0the same. I have tried 30=20
> dB(Maximum gain) to 0 dB (minimum gain) in both cases received SNR is=20
> the same(i.e.,15 dB). I am using a wireless connection in=20
> line-of-sight, with minimum Tx gain at least a fewdropsin SNR should=20
> be observed. I have also tried -50dB (just checking) but noeffect in=20
> the SNR is observed. The same thing I havetried using B210 as Tx, Rx=20
> signal strength does change in this case. However, while using N-200,=20
> noeffect of changing the gain value is observed. Somehow=C2=A0gainvalue=
 is=20
> fixed in N-200 while using the MATLABSDRu block. Can you PLEASE HELP=20
> ME!!! IT IS VERY, VERY IMPORTANT.
>
Well, neither usrp-users nor discuss-gnuradio are support lists for MATLA=
B.

You haven't mentioned which daughter-card you are using in the N200,=20
which would certainly help to fill in information about
 =C2=A0 what *might* be going on.


Does your receiver setup use AGC?=C2=A0 Do you know what its set-points a=
re?

If you simply look at the spectrum on the RX end as you vary gain on the=20
TX end, do you see a change?=C2=A0=C2=A0 At the higher end,
 =C2=A0 SNR may not change very much, depending on how it is being measur=
ed,=20
etc.


--------------9ceCDNk0EgssVV3tOw006CaD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 25/06/2023 16:49, Arhum Ahmad wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+QP_P=3DkMBqVSfi7ktJdrayHEjMWxu0SK-1jpgJx3ho2=3DfxOJQ@mail.=
gmail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Respected sir,
        <div><span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">I
            am using N-200 USRP for transmitting a signal. While
            transmitting,=C2=A0</span>I have<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
          </span>changed<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
            the Gain value </span>in the SDRu<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
            transmitting block, but my signal strength at the receiver </=
span>remains<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">=C2=A0the
            same. I also stop and restart the code but the change in
            gain does not affect the received signal. I have tried the
            changing gain via both available options i.e., input port
            and dialog, but it </span>seems to have no effect<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
            on the receiver. The signal strength at the receiver </span>r=
emains<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">=C2=A0the
            same. I have tried 30 dB(Maximum gain) to 0 dB (minimum
            gain) in both cases received SNR </span>is the same<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
            (i.e.,15 dB). I am using a wireless connection in
            line-of-sight, with minimum Tx gain at </span>least a few<spa=
n
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
          </span>drops<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
            in SNR should be observed. I have also tried -50dB (just
            checking) but </span>no<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
            effect in the SNR is observed. The same thing </span>I have<s=
pan
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
            tried using B210 as Tx, Rx signal strength does change in
            this case. However, while using N-200,=C2=A0</span>no<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
            effect of changing the gain value is observed. Somehow</span>=
=C2=A0gain<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
            value is fixed in N-200 while </span>using the MATLAB<span
style=3D"background-color:rgb(250,250,250);color:rgb(0,0,0);font-size:14p=
x">
            SDRu block. Can you PLEASE HELP ME!!! IT IS VERY, VERY
            IMPORTANT.</span><br>
        </div>
        <br>
      </div>
    </blockquote>
    Well, neither usrp-users nor discuss-gnuradio are support lists for
    MATLAB.<br>
    <br>
    You haven't mentioned which daughter-card you are using in the N200,
    which would certainly help to fill in information about<br>
    =C2=A0 what *might* be going on.<br>
    <br>
    <br>
    Does your receiver setup use AGC?=C2=A0 Do you know what its set-poin=
ts
    are?<br>
    <br>
    If you simply look at the spectrum on the RX end as you vary gain on
    the TX end, do you see a change?=C2=A0=C2=A0 At the higher end,<br>
    =C2=A0 SNR may not change very much, depending on how it is being
    measured, etc.=C2=A0=C2=A0 <br>
    <br>
    <br>
  </body>
</html>

--------------9ceCDNk0EgssVV3tOw006CaD--

--===============6781591878938471974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6781591878938471974==--
