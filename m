Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D04034969C
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 17:19:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 84577383ED1
	for <lists+usrp-users@lfdr.de>; Thu, 25 Mar 2021 12:19:10 -0400 (EDT)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B0F93838C2
	for <USRP-users@lists.ettus.com>; Thu, 25 Mar 2021 12:18:15 -0400 (EDT)
Received: by mail-qt1-f180.google.com with SMTP id g24so2055097qts.6
        for <USRP-users@lists.ettus.com>; Thu, 25 Mar 2021 09:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to;
        bh=xjL0heo2rwM8CqVzqf/n9uXousHvAyjc2b2+/9xezho=;
        b=l/vMz1ZakqPGPTrf70uKGUxY0VqPysYuA5LL2G/3NREcci5LMd/fY9AZ3vBRX1ou8G
         0FjM6EoZQxD/jJ0jLz52M4WmKrr0X7+I20Xz+NjUBAfrK483DwJC6oG8de6uNUB+XRH5
         Y7QWYgjbDYcjNLukcNQhA4yuss2jefuJ/0sZaq9dP+lw/ixf7rRuWzteFnlaEITd4pxU
         z6w77igohJMg1Kg01/7e1Col1mmftzTsmLllTnTA7XkJtRwxgUoEGtDcBy+aCPQB751j
         W/EywHLh9WIt8KaxoY1F3t+/qK8Tc7u/eAV9lelkByPV/mzLy/VQrbhA+mlj+AidP50K
         nJpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to;
        bh=xjL0heo2rwM8CqVzqf/n9uXousHvAyjc2b2+/9xezho=;
        b=G76WF5Lo74prxKJ8zAlnpnVpa5M3ivwLLzr94FuhE696+Vt060cS4HZZ3pY5cqhkel
         Z8117cedwGpkcuEK68b4xdpF3x7OAqjFvnuaTu8EnjDblJrumkz6se8Toj5scymTfXV5
         0G9w9Pq8izgDKfWh3XPQxidIAvxDoq5VrU5qPTMoINEaTOl+wsIvq2MQVgTY3I3QgIjL
         RF9YU+/IHnQeKr3XDHbwOmLpO8+eOGdUxm8Uta6gFy7GrTe0kYl67Kfepj/5XfHiKvMU
         Lf6DM4s5T6Ay3WaViiAM5e2XnaqC6GNs6VTuYgwGlX4SNzkTscC9a31UbgQ67GD1Gqxm
         kvQw==
X-Gm-Message-State: AOAM5304iuBOtO4uzvIlIrUc2yElluDcqKQGyxBa7KyOLw/BztNyNJmr
	OXtOG05UpC+WhUxUU0hgEQocO2dIitk=
X-Google-Smtp-Source: ABdhPJzXtFmScACRtIg5bwPiP37mPaJTClmCPjpcMKSGlqWhja78Sn5b+QL8ocN0HCkrMy8JP+iQRQ==
X-Received: by 2002:a05:622a:1342:: with SMTP id w2mr8163785qtk.163.1616689094824;
        Thu, 25 Mar 2021 09:18:14 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v35sm3865408qtd.56.2021.03.25.09.18.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Mar 2021 09:18:14 -0700 (PDT)
Message-ID: <605CB7C5.1010508@gmail.com>
Date: Thu, 25 Mar 2021 12:18:13 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Minutolo, Lorenzo" <minutolo@caltech.edu>
References: <AM0P193MB0308B15687129D5E933F0135BD9E9@AM0P193MB0308.EURP193.PROD.OUTLOOK.COM>,<6037ED20.4080902@gmail.com> <EC0B52AD-0BB9-4B72-99E7-4CC533B15A78@caltech.edu>
In-Reply-To: <EC0B52AD-0BB9-4B72-99E7-4CC533B15A78@caltech.edu>
Message-ID-Hash: B4QCVTERN54T2BFMI2DFXBIVZMP2VK4Y
X-Message-ID-Hash: B4QCVTERN54T2BFMI2DFXBIVZMP2VK4Y
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N300 - Set RX bandwidth
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B4QCVTERN54T2BFMI2DFXBIVZMP2VK4Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8762850502839485844=="

This is a multi-part message in MIME format.
--===============8762850502839485844==
Content-Type: multipart/alternative;
 boundary="------------060006040406010900010206"

This is a multi-part message in MIME format.
--------------060006040406010900010206
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 03/25/2021 12:07 PM, Minutolo, Lorenzo wrote:
> This is very interesting. I am trying to set the rx bandwidth on a=20
> N321 for a while now.
>
> Is there any workaround? Our bandwidth seems stuck at 8MHz while our=20
> application needs much more.
>
> Thanks
>
> Lorenzo
>
Sorry, on the N32x series, the analog bandwidth in front of the ADC is=20
*fixed*, and bandwidth delivered to your application is controlled
   strictly by the selected sample-rate.


>> On Feb 25, 2021, at 10:32 AM, Marcus D. Leech via USRP-users=20
>> <usrp-users@lists.ettus.com> wrote:
>>
>> =EF=BB=BF
>> On 02/25/2021 11:30 AM, Puertas Blanco, Roberto via USRP-users wrote:
>>>
>>> Hello,
>>>
>>> I noticed that RX bandwidth is fixed to 100MHz, although the AD9371=20
>>> datasheet specifies an adjustable range of 8 to 100MHz. Why is this=20
>>> parameter fixed?
>>>
>>> double magnesium_radio_control_impl::set_rx_bandwidth(
>>>
>>>     const double bandwidth, const size_t chan)
>>>
>>> {
>>>
>>> std::lock_guard<std::recursive_mutex> l(_set_lock);
>>>
>>> _ad9371->set_bandwidth(bandwidth, chan, RX_DIRECTION);
>>>
>>> // FIXME: setting analog bandwidth on AD9371 take no effect.
>>>
>>>     // Remove this warning when ADI can confirm that it works.
>>>
>>>     RFNOC_LOG_WARNING("set_rx_bandwidth take no effect on AD9371. "
>>>
>>>                      "Default analog bandwidth is 100MHz");
>>>
>>>     return AD9371_RX_MAX_BANDWIDTH;
>>>
>>> }
>>>
>>> Best regards,
>>>
>>> Roberto
>>>
>>>
>> Because despite what the *datasheet* for the AD9371 says, the=20
>> published interface to change the analog RX bandwidth has no effect.
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------060006040406010900010206
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 03/25/2021 12:07 PM, Minutolo,
      Lorenzo wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:EC0B52AD-0BB9-4B72-99E7-4CC533B15A78@caltech.edu"
      type=3D"cite">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Du=
tf-8">
      This is very interesting. I am trying to set the rx bandwidth on a
      N321 for a while now.
      <div><br>
      </div>
      <div>Is there any workaround? Our bandwidth seems stuck at 8MHz
        while our application needs much more.=C2=A0</div>
      <div><br>
      </div>
      <div>Thanks<br>
        <br>
        <div dir=3D"ltr">Lorenzo</div>
        <div dir=3D"ltr"><br>
        </div>
      </div>
    </blockquote>
    Sorry, on the N32x series, the analog bandwidth in front of the ADC
    is *fixed*, and bandwidth delivered to your application is
    controlled<br>
    =C2=A0 strictly by the selected sample-rate.<br>
    <br>
    <br>
    <blockquote
      cite=3D"mid:EC0B52AD-0BB9-4B72-99E7-4CC533B15A78@caltech.edu"
      type=3D"cite">
      <div>
        <div dir=3D"ltr">
          <blockquote type=3D"cite">On Feb 25, 2021, at 10:32 AM, Marcus
            D. Leech via USRP-users <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&g=
t;</a>
            wrote:<br>
            <br>
          </blockquote>
        </div>
        <blockquote type=3D"cite">
          <div dir=3D"ltr">=EF=BB=BF
            <div class=3D"moz-cite-prefix">On 02/25/2021 11:30 AM, Puerta=
s
              Blanco, Roberto via USRP-users wrote:<br>
            </div>
            <blockquote
cite=3D"mid:AM0P193MB0308B15687129D5E933F0135BD9E9@AM0P193MB0308.EURP193.=
PROD.OUTLOOK.COM"
              type=3D"cite">
              <meta name=3D"Generator" content=3D"Microsoft Word 15
                (filtered medium)">
              <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
              <div class=3D"WordSection1">
                <p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></=
o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</=
o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">I noticed tha=
t
                    RX bandwidth is fixed to 100MHz, although the AD9371
                    datasheet specifies an adjustable range of 8 to
                    100MHz. Why is this parameter fixed?<o:p></o:p></span=
></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</=
o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">double
                    magnesium_radio_control_impl::set_rx_bandwidth(<o:p><=
/o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0 const double
                    bandwidth, const size_t chan)<o:p></o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">{<o:p></o:p><=
/span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0
                    std::lock_guard&lt;std::recursive_mutex&gt;
                    l(_set_lock);<o:p></o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0
                    _ad9371-&gt;set_bandwidth(bandwidth, chan,
                    RX_DIRECTION);<o:p></o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0 <span
                      style=3D"background:yellow;mso-highlight:yellow">
                      // FIXME: setting analog bandwidth on AD9371 take
                      no effect.<o:p></o:p></span></span></p>
                <p class=3D"MsoNormal"><span
                    style=3D"background:yellow;mso-highlight:yellow"
                    lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 // Remove this warn=
ing when ADI can
                    confirm that it works.<o:p></o:p></span></p>
                <p class=3D"MsoNormal"><span
                    style=3D"background:yellow;mso-highlight:yellow"
                    lang=3D"EN-US">=C2=A0=C2=A0=C2=A0 RFNOC_LOG_WARNING("=
set_rx_bandwidth
                    take no effect on AD9371. "<o:p></o:p></span></p>
                <p class=3D"MsoNormal"><span
                    style=3D"background:yellow;mso-highlight:yellow"
                    lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0"Default analog
                    bandwidth is 100MHz");</span><span lang=3D"EN-US"><o:=
p></o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=
=A0 return
                    AD9371_RX_MAX_BANDWIDTH;<o:p></o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">}<o:p></o:p><=
/span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=C2=A0</=
o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">Best regards,=
<o:p></o:p></span></p>
                <p class=3D"MsoNormal"><span lang=3D"EN-US">Roberto<o:p><=
/o:p></span></p>
                <br>
              </div>
            </blockquote>
            Because despite what the *datasheet* for the AD9371 says,
            the published interface to change the analog RX bandwidth
            has no effect.<br>
            <br>
            <br>
            <span>_______________________________________________</span><=
br>
            <span>USRP-users mailing list</span><br>
            <span><a class=3D"moz-txt-link-abbreviated" href=3D"mailto:US=
RP-users@lists.ettus.com">USRP-users@lists.ettus.com</a></span><br>
            <span><a class=3D"moz-txt-link-freetext" href=3D"http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettu=
s.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span><br>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------060006040406010900010206--

--===============8762850502839485844==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8762850502839485844==--
