Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BCEB81BD
	for <lists+usrp-users@lfdr.de>; Thu, 19 Sep 2019 21:50:22 +0200 (CEST)
Received: from [::1] (port=44782 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iB2RY-0002fR-6X; Thu, 19 Sep 2019 15:50:20 -0400
Received: from mail-qt1-f181.google.com ([209.85.160.181]:46327)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iB2RU-0002ai-TW
 for usrp-users@lists.ettus.com; Thu, 19 Sep 2019 15:50:16 -0400
Received: by mail-qt1-f181.google.com with SMTP id u22so5746481qtq.13
 for <usrp-users@lists.ettus.com>; Thu, 19 Sep 2019 12:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=gb3fvm28vqujATPdYV7Ef9bL+r6JZHgRo+vyIJZcgFg=;
 b=UIVBNuJj4oRn0k3LJOWKBIhnUIuyuW6h9hbpTzhSzmVD3t0vEjvBGNA8wbUSeButhx
 HHx/9WkdZ19SmdPGuqRK3NwtN9TXnKhBleWUduxV2wfUWaXEAHpxCqgmxUOZ2oAOnrM7
 yWrxyi6QhtVtavtCNJ8VAhQH0H1mOcYN2tkpC84jejfc1sK2AqdNe2G9EFh2PagkqLXZ
 k9Ea/l72zaUkns2PaeXShDlWxraKaEl/9DhEmpL2JVn+46yDta8VvJXl8QMxXgB9MoiR
 jKdqbvyW0R+YsUbyis1DumJxS1sJ9BbEpxRgksxg912O2y0OhR5QjZadl4G7OoA3mfYz
 ONUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=gb3fvm28vqujATPdYV7Ef9bL+r6JZHgRo+vyIJZcgFg=;
 b=I2IGKxxBXNlwXBKBA6RSqSrgi45ZBXbM85/gaYUCzK4P0muX6Esri9UoKdRoJYukr0
 NOKiaDL0A9pQ/5gaIIIDwMM4/YJ+os6zuXCgs/YS2vN8PA2euzqXbrU5VatRw40Pbbwt
 l/oEo/PPgg1FW+XIZODfqDZcu1TOjCAiHGm3JbUS9mMvpKteAzviogvQ9G1hY/5kxK/a
 dcjQPYlokjvBsy/K7bafBoeFQtdEPSBVNEFyLANL5RpdLZlqZPnAUw8UGL3lZXCcu6e8
 3EV/pdHwsgQJxqfUTW0vI9TEsj2s6/sRGF5hIGxGclqDsZyXdjBcf/W6nflIkpzcvjE8
 AmZA==
X-Gm-Message-State: APjAAAV+Zhwi8Hb92nsEoUfbeTq85bsX6lqVYqCl0+/xVzNh3RSXUZY+
 dgcbE1A052l5x1Lr2plWHwQe4T1E
X-Google-Smtp-Source: APXvYqzGTH2ygj6PTO+zHzfwAHN5PiXw9WI+31PSjJ4A2rgL46C1j1J0QtyaiZnXfm6feDT3MqAA7Q==
X-Received: by 2002:ac8:4641:: with SMTP id f1mr5187689qto.367.1568922576169; 
 Thu, 19 Sep 2019 12:49:36 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id q5sm6614141qte.38.2019.09.19.12.49.35
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Sep 2019 12:49:35 -0700 (PDT)
Message-ID: <5D83DBCE.8080704@gmail.com>
Date: Thu, 19 Sep 2019 15:49:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <4dbdb91273d84bdd861b8f560c6f8d9e@ll.mit.edu>
In-Reply-To: <4dbdb91273d84bdd861b8f560c6f8d9e@ll.mit.edu>
Subject: Re: [USRP-users] X310 Daughterboard vs Front Panel GPIO
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============0057477748765299477=="
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

This is a multi-part message in MIME format.
--===============0057477748765299477==
Content-Type: multipart/alternative;
 boundary="------------080908060608010102050906"

This is a multi-part message in MIME format.
--------------080908060608010102050906
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/19/2019 03:21 PM, Muri, Richard - 1002 - MITLL via USRP-users wrote:
>
> Hello,
>
> I am a new USRP user with a question about how the GPIO functions. Are 
> the front panel and daughterboard GPIO separate entities?
>
> For instance, if I set the transmit to be always enabled on the 
> daughterboard ATR registers
>
>     uint32_t old_atr_idle_val = 
> tx_db_iface->get_atr_reg(uhd::usrp::dboard_iface::UNIT_TX, 
> uhd::usrp::gpio_atr::ATR_REG_IDLE);
>
>     uint32_t old_atr_rxo_val = 
> tx_db_iface->get_atr_reg(uhd::usrp::dboard_iface::UNIT_TX, 
> uhd::usrp::gpio_atr::ATR_REG_RX_ONLY);
>
>     uint32_t new_atr_val = 0;
>
>     uint32_t mask = 0x20; //bit 5 = tx not enabled (ie 0 -> always 
> enable Tx)
>
> tx_db_iface->set_atr_reg(uhd::usrp::dboard_iface::UNIT_TX, 
> uhd::usrp::gpio_atr::ATR_REG_IDLE, new_atr_val, mask);
>
> tx_db_iface->set_atr_reg(uhd::usrp::dboard_iface::UNIT_TX, 
> uhd::usrp::gpio_atr::ATR_REG_RX_ONLY, new_atr_val, mask);
>
> Will setting the front panel ATR to change a GPIO when I start 
> streaming function as normal, or will the pin always stay high?
>
> //GPIO[2] = ATR output 1 during TX
>
>     ctrl |= GPIO_BIT(2);
>
>     ddr |= GPIO_BIT(2);
>
>     atr_tx |= GPIO_BIT(2);
>
> //set data direction register (DDR)
>
>     mpUsrp->set_gpio_attr(gpio, "DDR", ddr, mask);
>
>     //set control register
>
>     mpUsrp->set_gpio_attr(gpio, "CTRL", ctrl, mask);
>
>     //set output values (OUT)
>
>     mpUsrp->set_gpio_attr(gpio, "OUT", out, mask);
>
> mpUsrp->set_gpio_attr(gpio, "ATR_TX", atr_tx, mask);
>
> Thank you!
>
> Richard
>
>
I've never played with the GPIO stuff myself, but my recollection is 
that the front-panel GPIO and daughterboard GPIO are completely separate
   entities.



--------------080908060608010102050906
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/19/2019 03:21 PM, Muri, Richard -
      1002 - MITLL via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:4dbdb91273d84bdd861b8f560c6f8d9e@ll.mit.edu"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hello,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I am a new USRP user with a question about
          how the GPIO functions. Are the front panel and daughterboard
          GPIO separate entities?<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">For instance, if I set the transmit to be
          always enabled on the daughterboard ATR registers<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">    uint32_t old_atr_idle_val =
          tx_db_iface-&gt;get_atr_reg(uhd::usrp::dboard_iface::UNIT_TX,
          uhd::usrp::gpio_atr::ATR_REG_IDLE);<o:p></o:p></p>
        <p class="MsoNormal">    uint32_t old_atr_rxo_val =
          tx_db_iface-&gt;get_atr_reg(uhd::usrp::dboard_iface::UNIT_TX,
          uhd::usrp::gpio_atr::ATR_REG_RX_ONLY);<o:p></o:p></p>
        <p class="MsoNormal">    uint32_t new_atr_val = 0;<o:p></o:p></p>
        <p class="MsoNormal">    uint32_t mask = 0x20; //bit 5 = tx not
          enabled (ie 0 -&gt; always enable Tx)<o:p></o:p></p>
        <p class="MsoNormal">   
          tx_db_iface-&gt;set_atr_reg(uhd::usrp::dboard_iface::UNIT_TX,
          uhd::usrp::gpio_atr::ATR_REG_IDLE, new_atr_val, mask);<o:p></o:p></p>
        <p class="MsoNormal">   
          tx_db_iface-&gt;set_atr_reg(uhd::usrp::dboard_iface::UNIT_TX,
          uhd::usrp::gpio_atr::ATR_REG_RX_ONLY, new_atr_val, mask);<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Will setting the front panel ATR to change
          a GPIO when I start streaming function as normal, or will the
          pin always stay high?<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">//GPIO[2] = ATR output 1 during TX<o:p></o:p></p>
        <p class="MsoNormal">    ctrl |= GPIO_BIT(2);<o:p></o:p></p>
        <p class="MsoNormal">    ddr |= GPIO_BIT(2);<o:p></o:p></p>
        <p class="MsoNormal">    atr_tx |= GPIO_BIT(2);<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">//set data direction register (DDR)<o:p></o:p></p>
        <p class="MsoNormal">    mpUsrp-&gt;set_gpio_attr(gpio, "DDR",
          ddr, mask);<o:p></o:p></p>
        <p class="MsoNormal">    //set control register<o:p></o:p></p>
        <p class="MsoNormal">    mpUsrp-&gt;set_gpio_attr(gpio, "CTRL",
          ctrl, mask);<o:p></o:p></p>
        <p class="MsoNormal">    //set output values (OUT)<o:p></o:p></p>
        <p class="MsoNormal">    mpUsrp-&gt;set_gpio_attr(gpio, "OUT",
          out, mask);<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">mpUsrp-&gt;set_gpio_attr(gpio, "ATR_TX",
          atr_tx, mask);<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thank you!<o:p></o:p></p>
        <p class="MsoNormal">Richard<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
    </blockquote>
    I've never played with the GPIO stuff myself, but my recollection is
    that the front-panel GPIO and daughterboard GPIO are completely
    separate<br>
      entities.<br>
    <br>
    <br>
  </body>
</html>

--------------080908060608010102050906--


--===============0057477748765299477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0057477748765299477==--

