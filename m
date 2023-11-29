Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EB85D7FD170
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 09:55:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 40601385199
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 03:55:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701248131; bh=TPHD3suFPhdeOWesrvGWuq/VKu+5vlpfja4YSVdJY8E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Oh2S1cgFUXNXzlxdvLBVWovx89oAi/46e8/n5rBqJVFgEtfKzNpD/lmX3HijYgvsZ
	 VzxGO1LbkjykDcE2Ix4og/r/E5n2j8MBRR5iRrNPrSkcW1Rcs6iKKND6lJvL0W+Gfk
	 8m6xsc6/o8vKwoFFAC7SSM37MSM3QQgKPXLISM7jO84aZUVRtrfjUHO8BccWZpphii
	 LSGEE3wZWhJN6vco95CPLCfIMaaPQ8WOljNTCP6HMJrWPzQ9D2Mq+WYot+UKSZpvsD
	 vjuT+KjVmsIaxuZp7bS6Xk7YzfQnYndCQ0UFK2jQkC+/7hVKFqtA6nyqDhoJ0LNwhc
	 0nttwpy2F0dOg==
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by mm2.emwd.com (Postfix) with ESMTPS id E3640385006
	for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 03:54:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OJf7trZO";
	dkim-atps=neutral
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5cc55b82ee5so61540847b3.2
        for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 00:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701248078; x=1701852878; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YqAM9UgzfK9Ekdv128htuhTQrg/VFjBYD6NInSqA6ag=;
        b=OJf7trZORYsTsY2XtBZj7OBEetZKbb0orE8+MgKFB3P2LePnih8SG6OrW5nX4SaxwG
         cSKw1lQoRGsWx5pS+rJ2UkQ89prhTju0z/n1o0ZQc/2rU+gxxmwCUqorJlcTg4aymwFt
         aIjflGO5XMEjlxTNPWQv/rT2PQy/j76Y4h/atVjDAaw8N2rjnKsWDGTO4+x8bJaf1BrD
         o6UsGuMSZs3I2ZFWZ+jLzAmGbhj2sG7rvTCJOmh0muzNtrqunkXOqrCOawr4tnNDglDt
         Ukd75DRPTRjm5TlEux0a5ZK5Vi8ic93C+/+CrtQplwFIRctCwMuH33FYlu66W8MHuQht
         1fRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701248078; x=1701852878;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YqAM9UgzfK9Ekdv128htuhTQrg/VFjBYD6NInSqA6ag=;
        b=IIOjcII50wJ0qrcq2bK9VYQz2Bglab5TSM4KxXVbMEe6IqmU5Tfpi4d/S2zKvW5z1t
         8eud5kXOWAkZJKVvhUuN14E1xz3bAK9vGsMRAej9nMWr8XjQvjfrMoq8VcykLHInFNgq
         hwTaGc+NzUrtoWrujgG4wVCde3E4eaNSnGKh205gKG2MnNNtxmZm8mQrjPjzGuG7JrpK
         f+FCoxzWk7zvZ44oyXvKviutiyuZT3td2LkKN4tMekW/6tv5AGZLI3/BDZRiRCi3SpiD
         nmTaJXkdCptIhgUuyfcol8T3SrB6USfruDiaGSojyJOSREFZuMWUImVsPT5WW97Ll/kE
         tfQw==
X-Gm-Message-State: AOJu0Yzgj6vRwGQjjri4hMKcvfYBvdv7IKMClUEP48LfvLlWB7yRh90H
	QYpv2X+fDz4kul/mS8aKZZLjvLrz/8I=
X-Google-Smtp-Source: AGHT+IFvz/cTSCCtg79kjVb09UkX2mHoMpqz9bDixDxmC2f/mDy/eblXiJy6OgyTWreTfQqYvKbYgw==
X-Received: by 2002:a05:690c:f83:b0:5ce:4bb:832d with SMTP id df3-20020a05690c0f8300b005ce04bb832dmr14600615ywb.6.1701248078076;
        Wed, 29 Nov 2023 00:54:38 -0800 (PST)
Received: from [192.168.2.170] ([174.93.0.146])
        by smtp.googlemail.com with ESMTPSA id bm30-20020a05620a199e00b0077a029b7bf1sm5200228qkb.28.2023.11.29.00.54.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Nov 2023 00:54:37 -0800 (PST)
Message-ID: <37c54c57-656c-4af1-905d-ac4f2e9695a4@gmail.com>
Date: Wed, 29 Nov 2023 03:54:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAM0spwqxrMJnasa4rwmhn6sMLhCTGPeaLyLcK1NYkLF=gso0JQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAM0spwqxrMJnasa4rwmhn6sMLhCTGPeaLyLcK1NYkLF=gso0JQ@mail.gmail.com>
Message-ID-Hash: ZH4QJMQPKUDYWQEMLLNPAS3FEHKSPJNM
X-Message-ID-Hash: ZH4QJMQPKUDYWQEMLLNPAS3FEHKSPJNM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 fpga build error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZH4QJMQPKUDYWQEMLLNPAS3FEHKSPJNM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1586508379147906511=="

This is a multi-part message in MIME format.
--===============1586508379147906511==
Content-Type: multipart/alternative;
 boundary="------------h03c02QSyr7f6aVYCWQGRywj"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------h03c02QSyr7f6aVYCWQGRywj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 29/11/2023 03:41, Ethan C wrote:
> Hello,
> I am trying to build the default B210 fpga project using Xilinx ISE 
> just to confirm I can do it before investing more time in a project. I 
> downloaded UHD 4.6 from the github repo and in 
> ~uhd/fpga/usrp3/top/b200 set up the Xilinx environment and built the 
> fpga project
>
> source /opt/Xilinx/14.7/ISE_DS/settings64.sh
>
> make b210
>
>
> I get an error "python: No such file or directory" during the 
> "Generating Report" part of the build like in the attached screenshots.
>
>
> I don't quite understand the python line before the error, but I 
> assume it's calling check_timing.py with b200.twr as a parameter. 
> check_timing.py is in the expected location, not sure where 
> build-B200//b200.twr is supposed to be, but there is the touch command 
> right before so it should be in ~uhd/fpga/usrp3/top/b200.
> The USRP B210 I am using wasn't connected when building the fpga 
> project, I assume that loading the new fpga project into the USRP can 
> be done after building it
> I edited one file in ~uhd/fpga/usrp3/top/b200 by adding a comment so I 
> guess it's not truly default.
> Is there something I'm missing or doing wrong?
>
>
I looks like there's no program called "python" on your system.

Some distros require that the user decide which of the python2 or 
python3 executables should be sym-linked to "python".

You probably haven't done that on your system.



--------------h03c02QSyr7f6aVYCWQGRywj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 29/11/2023 03:41, Ethan C wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAM0spwqxrMJnasa4rwmhn6sMLhCTGPeaLyLcK1NYkLF=gso0JQ@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hello,</div>
        <div>I am trying to build the default B210 fpga project using
          Xilinx ISE just to confirm I can do it before investing more
          time in a project. I downloaded UHD 4.6 from the github repo
          and in ~uhd/fpga/usrp3/top/b200 set up the Xilinx environment
          and built the fpga project<br>
        </div>
        <div><br>
        </div>
        <div>
          <p dir="ltr"
            style="line-height:1.38;margin-top:0pt;margin-bottom:0pt"
id="gmail-docs-internal-guid-c87dea04-7fff-18ca-5c43-9536aa26ccd0"><span
style="font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">source /opt/Xilinx/14.7/ISE_DS/settings64.sh</span></p>
          <p dir="ltr"
            style="line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span
style="font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap">make b210</span></p>
        </div>
        <div><br>
        </div>
        <div>
          I get an error "python: No such file or directory" during the
          "Generating Report" part of the build like in the attached
          screenshots.<br>
        </div>
        <div><br>
        </div>
        <div>
          <span
style="font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"
id="gmail-docs-internal-guid-55d71caf-7fff-2e70-c00d-14a989eb9a35"><span
style="border:medium;display:inline-block;overflow:hidden;width:624px;height:287px"><img
src="https://lh7-us.googleusercontent.com/uU7StUaany4bKX1XsOIUoNF5ETEr9QZzx5kg0UvWAc1J5tOAVDvqOEYTqOCiRjCEv4mAOBq4imGfIYNYMJ5zxfNIQS84vykAH1-Vd3_tSoQwfBN0Kt0Yv4V9pP4KFHpFFV94k0kv0e4eG07Uy2u0838"
          style="margin-left: 0px; margin-top: 0px;"
          moz-do-not-send="true" width="624" height="287"></span></span>
          <span
style="font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre-wrap"
id="gmail-docs-internal-guid-e206eb34-7fff-3eef-0bb6-8717453288a4"><span
style="border:medium;display:inline-block;overflow:hidden;width:624px;height:287px"><img
src="https://lh7-us.googleusercontent.com/5NV4TpD7ZNhwzHxYIkYYHqpgcCkJNcUqxGcxEkLznTSBpulPTikRpMteoCZ0ynLQbHLrQNxWHrM9eFXfWygcGTj2oW2y95kG1nm_2kyrJPwlpFCP8IJq3m84XPVKGOBpxtZQ_LqqX7f-fFYdTAMqryE"
          style="margin-left: 0px; margin-top: 0px;"
          moz-do-not-send="true" width="624" height="287">
</span></span></div>
        <div><br>
        </div>
        <div>I don't quite understand the python line before the error,
          but I assume it's calling check_timing.py with b200.twr as a
          parameter. check_timing.py is in the expected location, not
          sure where build-B200//b200.twr is supposed to be, but there
          is the touch command right before so it should be in
          ~uhd/fpga/usrp3/top/b200.</div>
        <div>
          The USRP B210 I am using wasn't connected when building the
          fpga project, I assume that loading the new fpga project into
          the USRP can be done after building it</div>
        <div>I edited one file in ~uhd/fpga/usrp3/top/b200 by adding a
          comment so I guess it's not truly default.</div>
        <div>Is there something I'm missing or doing wrong?<br>
        </div>
      </div>
      <br>
      <br>
    </blockquote>
    I looks like there's no program called "python" on your system.<br>
    <br>
    Some distros require that the user decide which of the python2 or
    python3 executables should be sym-linked to "python".<br>
    <br>
    You probably haven't done that on your system.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------h03c02QSyr7f6aVYCWQGRywj--

--===============1586508379147906511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1586508379147906511==--
