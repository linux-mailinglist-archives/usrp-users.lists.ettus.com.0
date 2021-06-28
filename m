Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF653B68A4
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 20:43:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE3C7384143
	for <lists+usrp-users@lfdr.de>; Mon, 28 Jun 2021 14:43:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="H/58fJ32";
	dkim-atps=neutral
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id C8B0F383F28
	for <usrp-users@lists.ettus.com>; Mon, 28 Jun 2021 14:42:49 -0400 (EDT)
Received: by mail-qk1-f169.google.com with SMTP id l16so9142602qkp.3
        for <usrp-users@lists.ettus.com>; Mon, 28 Jun 2021 11:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=Xou7u7sOPI9ImEw8TF7PmhexLOLhIR1EGMJW4FZrmkc=;
        b=H/58fJ32tDeUoPc29thOqFZ/z3T7eocL6Zs+snYPH364giRXNKGoBrzCqsFJJClZOe
         iv9poyLdWRf7z27Hvy0Yw+CgP/EkXMZ4kWNYX1GUZQcGjTGT60mGfKRdh/a5keLCrnmd
         UtG2YvlJEKlLHzZzMgir9G1o4pxwqM4tT8Zb91PHLcHYu0rEjOTtpYP/a9vmiIDwhLGn
         0ur2jAh4QJ5dGnMGfktduyETdDCIv/SdQvjPn7ATpmI0SzthGakC2eJllcYWmpsHW1EU
         vNF3KNhuLNHqg+liHjsZaqcTtLCjAbm0vrrugRNd8PPaPKqBccF1LhNXx+8AqhOD5IIG
         eh0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=Xou7u7sOPI9ImEw8TF7PmhexLOLhIR1EGMJW4FZrmkc=;
        b=FZsj522uvdP8Fivok71Mou+kpVWvddWS5ljjeE0eR2m6gldBWP2YDu9ktrG03LbML0
         /kdyhsI2T5KP2786sKSwMIHUFqN+oBJUQme5p2K8z8ss6IiBou0gEzezMjZD48TpJ2C/
         g8rP6gAxiCARTeVgYBfsy0wZoL/6iiqUkhfSLrNN9B6pHQaapJAuXvvlCsrF4ClG7rii
         35qEIv9M2YfUgtBiRWOAAcrpO+cvmaNg+vqPK7tamcdCcBu6Xny96brF0axCw0rO/36b
         q1+++SVFT7/kvfLfaUA+5WmJ/DYrgZucP7iptttj1Zhu9tdAuu/zPmH1WZHbreRtXzdw
         D7wQ==
X-Gm-Message-State: AOAM530Q8d2qqZ7/TzrC+TYGo+JkNNDO8tWxXh1CfXv7QiQGsxVsRamK
	nPSR/mxEUfhSDxI8bOMQsiHoFRY4O9WkNw==
X-Google-Smtp-Source: ABdhPJwhBmupdM70QWWyPLm5a/b4sP9c77hVsh+JvyQOnLs+mBn0awgY/DpAhRhOiomoUUBJHWqWqg==
X-Received: by 2002:ae9:e30a:: with SMTP id v10mr10378876qkf.161.1624905768981;
        Mon, 28 Jun 2021 11:42:48 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id l1sm6454006qkc.93.2021.06.28.11.42.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Jun 2021 11:42:48 -0700 (PDT)
Message-ID: <60DA1827.5070300@gmail.com>
Date: Mon, 28 Jun 2021 14:42:47 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <a3PVJC5fGD8T0XE9NVw3i5mX2V7LWW3xIeM53XvVg@lists.ettus.com>
In-Reply-To: <a3PVJC5fGD8T0XE9NVw3i5mX2V7LWW3xIeM53XvVg@lists.ettus.com>
Message-ID-Hash: HSVACF6RXNGHHAV2OXEKS7GGSP473LGM
X-Message-ID-Hash: HSVACF6RXNGHHAV2OXEKS7GGSP473LGM
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc radio transmit control
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HSVACF6RXNGHHAV2OXEKS7GGSP473LGM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable

On 06/28/2021 01:56 PM, rblack@swri.org wrote:
>
> Hi and thanks. The reference was a good read, but I don=92t think it=20
> quite covers my application. It describes how to send commands to the=20
> Radio Block to initiate transmission at a specific precise time. But I=20
> need to repeatedly gate the transmit signal on/off very rapidly=20
> (microsec), and it does not seem like the radio block command que is=20
> appropriate for that?
>
> What I=92m talking about could be done with a modulation block in the=20
> normal UHD, but in RFnoc for UHD 4.0 I think there are only a few=20
> blocks supported.
>
> Any ideas?
>
>
> thanks rb
>
>
OK, so that just sounds a bit like an OOK type modulation scheme.=20
Standard RFNOC blocks won't help you--you'd have to write
   your own, or use the host-software interface through UHD and perhaps=20
Gnu Radio.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
