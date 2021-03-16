Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AE033DD00
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 20:00:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F9E8383897
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 15:00:58 -0400 (EDT)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 0233D383890
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 15:00:02 -0400 (EDT)
Received: by mail-lf1-f51.google.com with SMTP id q25so64078021lfc.8
        for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 12:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lmarlow-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4Zbw5X5z8G1EiQMyA7RIFr+1tyi6dNcb4KOPr0zyTzU=;
        b=rwlEj8ybC6EjfSPf5QZrter34shEY9UNIJUulrjYPkpHQtmg4U1uOaVVFIbE7/uP0G
         XAKa7KDAkdpJX0/ywDL+UF5PCmc2zHyZr9+OqbUis52AQVzOZ6xACz63a3sQ75IFGL/g
         2jlm6MIf3OS3VxZyHKibUYrySlSTZ0MKZ0sMVWVDFXt8K1f2FLtoL+RqrTh954fvG8E7
         Q+TCjXPsmrkYHUGlx1giPRxf8mXkYplHwcNwobmeC2k2WPjCtYjEQc3yt+OK+ITgutZT
         uhL7ekXdC+zEWI3PT3t83WLkm6RLJLk9tIxKLH91PYGZYafhJInXXcCt89H+rtf0bBnu
         zLDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4Zbw5X5z8G1EiQMyA7RIFr+1tyi6dNcb4KOPr0zyTzU=;
        b=RH4MQJ3MmoZTainfDyIwhSrh/XVTWC7Gc2brrYNFXrTTTZBtpPGTVeToYmqyRwJhN4
         Dlu2O+yN8UxYhzc5/BgoNEWxFzlA9BsB/7AFNyr/J9wYhYU9/emvfuIFD9geoH5H1etA
         KrcC63gAwu5S4HRcUDE+m1qT4OsXgE6YkbmGG6Df3pgSvVUt2QcGGSdRwfmzsKwBvcB+
         2UOxRc9NIZKM1shaQZI168ayvePgAKBfEmKMsgpwWurI6q6G/9WFTkH21GFTYc77Ei3K
         euCixC/3yX9CHQa4IREVT7/fWTSzT5d3jvPwsycaQNNvQ150qhxRB9WP1r+hcRATXC2x
         M7iA==
X-Gm-Message-State: AOAM530ptieWdIO3udNk/RnrGt5ySStiIeoMv6BR+X5PlZfaix4Gg09q
	muMYZbYKY8izdMV1s6HHxIVpuGwbjTP4rdDnxKq7
X-Google-Smtp-Source: ABdhPJxeE9YwslIF/u1nElAfpgx3CbnpGE7Fta7qSLz9kgGGD+agfrWkluGw6M0Wgqcff044TjzHs55hBNX0XnUUfCE=
X-Received: by 2002:a19:712:: with SMTP id 18mr103715lfh.591.1615921201583;
 Tue, 16 Mar 2021 12:00:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAOHuk9D5U97rJmO1ExSnwz4d=f4ya4uusyi68E1yT7ii0F+UBw@mail.gmail.com>
 <CAFOi1A7N-fP6K+ai4qrJOT7tnOuQ5D_pd3n8WoXcH00pQUoG8A@mail.gmail.com>
In-Reply-To: <CAFOi1A7N-fP6K+ai4qrJOT7tnOuQ5D_pd3n8WoXcH00pQUoG8A@mail.gmail.com>
From: Ryan Marlow <ryan@lmarlow.com>
Date: Tue, 16 Mar 2021 14:59:50 -0400
Message-ID: <CAOHuk9Bh53iOAVH20CaiNurx3VnWQ13jXuKfF=zX843a0jiKeQ@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: ALWQ72DUQTBQX7B3VSIV7Y3B6R7CHG4G
X-Message-ID-Hash: ALWQ72DUQTBQX7B3VSIV7Y3B6R7CHG4G
X-MailFrom: ryan@lmarlow.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N3xx internal ethernet interface
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ALWQ72DUQTBQX7B3VSIV7Y3B6R7CHG4G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7179691419830291605=="

--===============7179691419830291605==
Content-Type: multipart/alternative; boundary="00000000000034ae6905bdabf9b3"

--00000000000034ae6905bdabf9b3
Content-Type: text/plain; charset="UTF-8"

Martin,
Appreciate the response!
Hope all is well.
Thanks,
Ryan

On Tue, Mar 16, 2021 at 12:54 PM Martin Braun <martin.braun@ettus.com>
wrote:

> You can't ping it using the 'ping' command (as you've probably found out
> yourself). We don't implement this outside of UHD, but UHD sends out
> discovery management packets into that network to see what's on the other
> side (e.g., a crossbar). You could forge one of those and send it in there
> via UHD, but you'd have to figure out the packet format from the RFNoC spec
> and the source code.
>
> --M
>
> On Tue, Mar 16, 2021 at 4:20 PM Ryan Marlow <ryan@lmarlow.com> wrote:
>
>> Hello All,
>> I have kinda an obscure/deep question about the functionality of the
>> internal ethernet interface on the N3xx. It is my understanding that this
>> interface (int0) connects the linux OS on the ARM to the CHDR/RFNoC network
>> on FPGA so you can run UHD on the N3xx ARM itself. To verify the
>> functionality of this interface, can I "ping" the IP address (defaults to
>> 192.168.10.2) of the FPGA side on that interface and expect a response?
>> Using tcpdump, I can see ARP request and replies. Just curious if anyone
>> has suggestions of sanity checks that are simpler than running
>> uhd_find_devices or uhd_usrp_probe to verify the integrity of that
>> interface connection.
>> Thanks,
>> Ryan Marlow
>>
>> --
>> Ryan L. Marlow
>> R L Marlow Consulting LLC
>> rlmarlow.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

-- 
Ryan L. Marlow
R L Marlow Consulting LLC
rlmarlow.com

--00000000000034ae6905bdabf9b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Martin,</div><div>Appreciate the response!<br></div><=
div>Hope all is well.</div><div>Thanks,<br></div><div>Ryan<br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Mar 16, 2021 at 12:54 PM Martin Braun &lt;<a href=3D"mailto:martin.braun@e=
ttus.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>You can&#39;t ping i=
t using the &#39;ping&#39; command (as you&#39;ve probably found out yourse=
lf). We don&#39;t implement this outside of UHD, but UHD sends out discover=
y management packets into that network to see what&#39;s on the other side =
(e.g., a crossbar). You could forge one of those and send it in there via U=
HD, but you&#39;d have to figure out the packet format from the RFNoC spec =
and the source code.</div><div><br></div><div>--M<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 16, =
2021 at 4:20 PM Ryan Marlow &lt;<a href=3D"mailto:ryan@lmarlow.com" target=
=3D"_blank">ryan@lmarlow.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello All,</div><div>I ha=
ve kinda an obscure/deep question about the functionality of the internal e=
thernet interface on the N3xx. It is my understanding that this interface (=
int0) connects the linux OS on the ARM to the CHDR/RFNoC network on FPGA so=
 you can run UHD on the N3xx ARM itself. To verify the functionality of thi=
s interface, can I &quot;ping&quot; the IP address (defaults to 192.168.10.=
2) of the FPGA side on that interface and expect a response? Using tcpdump,=
 I can see ARP request and replies. Just curious if anyone has suggestions =
of sanity checks that are simpler than running uhd_find_devices or uhd_usrp=
_probe to verify the integrity of that interface connection.</div><div>Than=
ks,</div><div>Ryan Marlow<br></div><div><br>-- <br><div dir=3D"ltr"><div di=
r=3D"ltr"><div>Ryan L. Marlow</div><div>R L Marlow Consulting LLC</div><div=
><a href=3D"http://rlmarlow.com" target=3D"_blank">rlmarlow.com</a><br></di=
v></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div>Ryan L. Marlow</div><div>R L Marlow C=
onsulting LLC</div><div><a href=3D"http://rlmarlow.com" target=3D"_blank">r=
lmarlow.com</a><br></div></div></div>

--00000000000034ae6905bdabf9b3--

--===============7179691419830291605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7179691419830291605==--
