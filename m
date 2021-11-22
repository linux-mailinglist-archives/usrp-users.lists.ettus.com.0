Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB5A4590FA
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 16:09:50 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8809E384945
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 10:09:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NlORFi/+";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 98B3238460A
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 10:07:54 -0500 (EST)
Received: by mail-qk1-f176.google.com with SMTP id m192so13989381qke.2
        for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 07:07:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=Uy2WMOppQSD9QAtbsao9Fn5M3/qMIFQsvQZ74SWuHPs=;
        b=NlORFi/+iCWrw9aLnA/W7LmhB+qAcyEsV0w+VEyju1ywP2ms2ylEBdj81iTzgac8Ts
         VRCa9q+WniUhkpiQ7pMlI5UmEF1H/E7YPjpXJB5XWTccZOLGoHyZY/9ncVpTZhNXMG4q
         JyUMpnKja76Z5LvFYyZPpDrb/9fWnnm8bE2Fh3xaK/QN8DrwQPmXF+M1zvPmYCMhw9sz
         dmVp0gS7YDvjHfq1Ri8PCE1eZksEqfKkacINS5X/AmCq+icldzgsYsPdz9EchbgQc3mX
         TIbWVmXlNfXmsClfeMAesL+YIjrnRozZLw85YwWA/v2Kv3MRlrxXbCTfi/zz9FpfpmKv
         /Row==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=Uy2WMOppQSD9QAtbsao9Fn5M3/qMIFQsvQZ74SWuHPs=;
        b=TwnoYc7MTBh3OUwVlI5KkQb4c8g9DtAP2JqdXPSkkeDZPLVx0hX81P/C0nQnUN0xj4
         iGyIWWpgNIQdE7hbHUdt5M1/EpCVadHkBheyHFigaaF+H6hYXcg+e5MpHRS+imG18nzQ
         f79+4+Zu2FL0DiOw/Ei83NmHTRhw1O9/FoF7nnnRkQRO606HpDYW3Ot1db+m/7gwOi9r
         7TdryLNdCa0U7qW+FPUlXdJSKfgRYAcLNaiRJ1N45FBOxgePNnsRHTmKoTX68btCt8vI
         yfIOpzjQNqZRKlPN+g5YBYhXTq2Ywgmc0JSobBi4mOEuzNQM9++PfBIMRUKMNGpGmEkV
         baAQ==
X-Gm-Message-State: AOAM532bXGq5fobaoUGXmkZkel3rAf5KN234NIFGH2rQELIzA0fvl9I3
	pAm/K8AFKMPV0q/GR0CqPaE=
X-Google-Smtp-Source: ABdhPJxjiKzJaGhAfDvrY2ss9bWkRbTsIRBal6ad8lf09HYLVZAyhXZ/dAnSH5P01k/st0saSSzbGg==
X-Received: by 2002:a05:620a:a47:: with SMTP id j7mr50115115qka.439.1637593673954;
        Mon, 22 Nov 2021 07:07:53 -0800 (PST)
Received: from [192.168.2.228] (bras-base-smflon1825w-grc-06-174-88-54-236.dsl.bell.ca. [174.88.54.236])
        by smtp.googlemail.com with ESMTPSA id 196sm4497087qkd.61.2021.11.22.07.07.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 07:07:53 -0800 (PST)
Message-ID: <14174270-d6f8-f816-72bb-48dc880b0ebd@gmail.com>
Date: Mon, 22 Nov 2021 10:07:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Richard Bell <richard.bell4@gmail.com>
References: <CAMMoi3t5ZhJG5w0zJ=28UTLua2sE9YTSqfMZHN3TLfsPHrHehg@mail.gmail.com>
 <81cb143c-ea65-a1c6-0ce8-30edbc2f2d8a@gmail.com>
 <CAMMoi3vu6pOOgXoeOpyLGZ-FtW84S9Y1qz4bEQPocbuit99QWA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAMMoi3vu6pOOgXoeOpyLGZ-FtW84S9Y1qz4bEQPocbuit99QWA@mail.gmail.com>
Message-ID-Hash: RX7OT2I4VAHW5Z6IVBUY3PJN7M75IVBF
X-Message-ID-Hash: RX7OT2I4VAHW5Z6IVBUY3PJN7M75IVBF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 5 x N310 Network Setup
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RX7OT2I4VAHW5Z6IVBUY3PJN7M75IVBF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4427073561301398084=="

This is a multi-part message in MIME format.
--===============4427073561301398084==
Content-Type: multipart/alternative;
 boundary="------------bGplfTxE7MI0CgxsrWKbGJl0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------bGplfTxE7MI0CgxsrWKbGJl0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-22 02:18, Richard Bell wrote:
> Hey Marcus,
>
> I would like to be able to use all=C2=A0four channels of each N310 if=20
> desired. In that case it would take 2 SFP+ per N310 as I understand=20
> it. If I only use 1 channel I would require 1 SFP+ port, I understand=20
> your point.
>
> Richard
Ah.=C2=A0 I misunderstood.=C2=A0 Then, yes, in order to move 400Msps per =
USRP=20
you'd need two SFP+ 10Gig cards per USRP.=C2=A0 But the aggregate there i=
s 2Gsps.

That would require some very very very capable machine, even to just=20
record the samples, even briefly.=C2=A0 If you can make that work, I thin=
k=20
we'd all
 =C2=A0 like to know how....

>
> On Sun, Nov 21, 2021 at 10:08 PM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 2021-11-22 00:55, Richard Bell wrote:
>>     Hello,
>>
>>     I am attempting to setup 5 USRP N310's to be controlled by a
>>     single host. You can assume the host has enough processing power
>>     to avoid being the bottleneck. My question here is only concerned
>>     with properly setting up the network so that 100 MHz of bandwidth
>>     capture is theoretically supported by each of the 5 N310's per
>>     channel.
>>
>>     Would the following setup support the above:
>>     1) Connect each of the 1G Ethernet management ports to a
>>     switch=C2=A0and connect the switch to the host. Each radio should =
be
>>     assigned an IP address automatically by a DHCP server as I
>>     understand it.
>>     2) Connect the SFP+ ports to a corresponding NIC SFP+ port on the
>>     host computer. With 5 N310's this will correspond to 10 total
>>     SFP+ ports required at the host, two per radio.
>>
>>     Is this correct, or do I need to change something? Also, is there
>>     a way to reduce the required number of SFP+ ports required on the
>>     host by using a 100G switch in some way?
>>
>>     Thank you for any assistance you can provide
>>
>>     Richard
>>
>>     _______________________________________________
>>     USRP-users mailing list --usrp-users@lists.ettus.com
>>     To unsubscribe send an email tousrp-users-leave@lists.ettus.com
>     I'm slightly confused by the wording. Do you intend to bring in a
>     total of 1Gsps or 500Gsps?
>
>     A single 10G SFP+ port should support about 200Msps. Unless I
>     botched the late-night math, you'd only need both SFP+ ports per
>     N310 if you were bringing in up to 400Msps.
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--------------bGplfTxE7MI0CgxsrWKbGJl0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-22 02:18, Richard Bell
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAMMoi3vu6pOOgXoeOpyLGZ-FtW84S9Y1qz4bEQPocbuit99QWA@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hey Marcus,
        <div><br>
        </div>
        <div>I would like to be able to use all=C2=A0four channels of eac=
h
          N310 if desired. In that case it would take 2 SFP+ per N310 as
          I understand it. If I only use 1 channel I would require 1
          SFP+ port, I understand your point.</div>
        <div><br>
        </div>
        <div>Richard</div>
      </div>
    </blockquote>
    Ah.=C2=A0 I misunderstood.=C2=A0 Then, yes, in order to move 400Msps =
per USRP
    you'd need two SFP+ 10Gig cards per USRP.=C2=A0 But the aggregate the=
re
    is 2Gsps.<br>
    <br>
    That would require some very very very capable machine, even to just
    record the samples, even briefly.=C2=A0 If you can make that work, I
    think we'd all<br>
    =C2=A0 like to know how....<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAMMoi3vu6pOOgXoeOpyLGZ-FtW84S9Y1qz4bEQPocbuit99QWA@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov 21, 2021 at 10:=
08
          PM Marcus D. Leech &lt;<a
            href=3D"mailto:patchvonbraun@gmail.com" moz-do-not-send=3D"tr=
ue"
            class=3D"moz-txt-link-freetext">patchvonbraun@gmail.com</a>&g=
t;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <div>On 2021-11-22 00:55, Richard Bell wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hello,
                <div><br>
                </div>
                <div>I am attempting to setup 5 USRP N310's to be
                  controlled by a single host. You can assume the host
                  has enough processing power to avoid being the
                  bottleneck. My question here is only concerned with
                  properly setting up the network so that 100 MHz of
                  bandwidth capture is theoretically supported by each
                  of the 5 N310's per channel.</div>
                <div><br>
                </div>
                <div>Would the following setup support the above:</div>
                <div>1) Connect each of the 1G Ethernet management ports
                  to a switch=C2=A0and connect the switch to the host. Ea=
ch
                  radio should be assigned an IP address automatically
                  by a DHCP server as I understand it.=C2=A0</div>
                <div>2) Connect the SFP+ ports to a corresponding NIC
                  SFP+ port on the host computer. With 5 N310's this
                  will correspond to 10 total SFP+ ports required at the
                  host, two per radio.</div>
                <div><br>
                </div>
                <div>Is this correct, or do I need to change something?
                  Also, is there a way to reduce the required number of
                  SFP+ ports required on the host by using a 100G switch
                  in some way?</div>
                <div><br>
                </div>
                <div>Thank you for any assistance you can provide</div>
                <div><br>
                  Richard</div>
              </div>
              <br>
              <fieldset></fieldset>
              <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.=
ettus.com" target=3D"_blank" moz-do-not-send=3D"true" class=3D"moz-txt-li=
nk-freetext">usrp-users-leave@lists.ettus.com</a>
</pre>
            </blockquote>
            I'm slightly confused by the wording. Do you intend to bring
            in a total of 1Gsps or 500Gsps?<br>
            <br>
            A single 10G SFP+ port should support about 200Msps.=C2=A0=C2=
=A0
            Unless I botched the late-night math, you'd only need both
            SFP+ ports per N310 if you were bringing in up to 400Msps.<br=
>
          </div>
          _______________________________________________<br>
          USRP-users mailing list -- <a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a><br>
          To unsubscribe send an email to <a
            href=3D"mailto:usrp-users-leave@lists.ettus.com"
            target=3D"_blank" moz-do-not-send=3D"true"
            class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettus.=
com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>
--------------bGplfTxE7MI0CgxsrWKbGJl0--

--===============4427073561301398084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4427073561301398084==--
