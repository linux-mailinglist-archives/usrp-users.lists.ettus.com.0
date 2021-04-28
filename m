Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C586A36D850
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 15:31:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A6DAA38411C
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 09:31:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="KIQiQffl";
	dkim-atps=neutral
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A23D383BAE
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 09:30:01 -0400 (EDT)
Received: by mail-qk1-f177.google.com with SMTP id i12so31911210qke.3
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 06:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=OLq1QFCWX4nrX6IsavWLjb9Yph6JzTL+2acWy3qRhzE=;
        b=KIQiQfflp1YRfit8Cv5UMW+GFYVfHMFZ6K/Ngfe+qI0aG5EfKw9a3JfK88Uq7Ec5iI
         Oyd0V3x1dUMGm/Ea3wMEDCHjwoo1nHn5q7Y4fagWA20x2XYpmOkwN3FOYBb78nUnU5Y1
         sIwQ5PpbHZ4AGTRLA0jaljNIfscyFs6mKpzm79J1Z6EeXS4Ios3iNe8ILrz+QeNFQwUB
         IeeUZJvFbYippD4q3UmWj9Nuik6Jm9qyb/55bjSUF5Zndw+uTVDRMali32p3S+4RSCHL
         kGysu0qgst8buEeVmCwM4kutgzcE2hICEJ0himhxnnj/Rkc5Pj6f5kbv5VwD3tmy8It8
         Bc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=OLq1QFCWX4nrX6IsavWLjb9Yph6JzTL+2acWy3qRhzE=;
        b=VChYS1zOWT++2RBsbZTKJJIbjMpKeWokpZxkVMpWQTvdba+HTXo09Vlh+uv9A62NO/
         aERjDI9XWK/sGpeOtrvDxnjSae4LsUHs1G+k6c/EbQI3iZElBINujf+NFrqRGlO6rlQD
         aujvOTd6nJld5DFBtvuxdOH068dCbN+RWaQpcBPHtMjoZl+IlXjccU1F/taFqshJtiXt
         voSb3LgcdMZvrbrM5YmF8bhgO3pBsFQeGrtQB6FQ+3KOiHTAdpMEKm5cjdJT6ABp8AOH
         kAqKgBC9jMObZuD7FFLWB4Ktna9oBuXWPfoaM4uQXC6ZwjLdcqqHNzTm81YXkRu2190u
         H6Sg==
X-Gm-Message-State: AOAM532r3PFrSlNjxd47j6xBu38nDCaaIOp/GwSPeVj9GNTgu7HdFiUq
	lAuKtHM/MEBzpA+u1gWGfvhZCApw3fbGiA==
X-Google-Smtp-Source: ABdhPJznHGbWlUkDBy9OU3IZ7STWDNgRIRaLl4NNT2FU2ug6f7NWxpDLMNseqWR/Z+GzGkfZW5ba4Q==
X-Received: by 2002:a37:aa04:: with SMTP id t4mr28284303qke.341.1619616600689;
        Wed, 28 Apr 2021 06:30:00 -0700 (PDT)
Received: from [10.34.170.249] ([143.244.46.35])
        by smtp.gmail.com with ESMTPSA id p6sm5032113qkk.30.2021.04.28.06.29.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 06:29:59 -0700 (PDT)
To: arjan.feta@unifi.it, usrp-users@lists.ettus.com
References: <omEQzdb3Ge82KGzwr6A6zYcVOMZn5MFTRmD5n6J2Bh8@lists.ettus.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Organization: University of Virginia
Message-ID: <fcce6988-94ed-1ae4-c5f7-530f7b58565a@virginia.edu>
Date: Wed, 28 Apr 2021 09:30:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <omEQzdb3Ge82KGzwr6A6zYcVOMZn5MFTRmD5n6J2Bh8@lists.ettus.com>
Message-ID-Hash: FALLXSJSDEPNHGCKFCIKRJMD5M4CBM3A
X-Message-ID-Hash: FALLXSJSDEPNHGCKFCIKRJMD5M4CBM3A
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Unable to receive two signals in parallel with one TwinRX
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FALLXSJSDEPNHGCKFCIKRJMD5M4CBM3A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3187612241388381810=="

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============3187612241388381810==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="RoqsEbh1dyYsFSiDwFT0UoXFFyi0RHzor"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--RoqsEbh1dyYsFSiDwFT0UoXFFyi0RHzor
Content-Type: multipart/mixed; boundary="BbLhfthxEsGirTQMWgzRh3YL8iIySxgv6";
 protected-headers="v1"
From: Dustin Widmann <dw2zq@virginia.edu>
To: arjan.feta@unifi.it, usrp-users@lists.ettus.com
Message-ID: <fcce6988-94ed-1ae4-c5f7-530f7b58565a@virginia.edu>
Subject: Re: [USRP-users] Unable to receive two signals in parallel with one
 TwinRX
References: <omEQzdb3Ge82KGzwr6A6zYcVOMZn5MFTRmD5n6J2Bh8@lists.ettus.com>
In-Reply-To: <omEQzdb3Ge82KGzwr6A6zYcVOMZn5MFTRmD5n6J2Bh8@lists.ettus.com>

--BbLhfthxEsGirTQMWgzRh3YL8iIySxgv6
Content-Type: multipart/mixed;
 boundary="------------F4EA9357717FA3C90DB3FBA1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------F4EA9357717FA3C90DB3FBA1
Content-Type: multipart/alternative;
 boundary="------------AAFB8E46D3A8E14ECEF78E3E"


--------------AAFB8E46D3A8E14ECEF78E3E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Arjan,

Seeing as the max frequency on the TwinRX is 6GHz, you would nominally=20
need (at the very least) 2 mixers, a splitter, and a high frequency=20
source (>13.2GHz) (such as a signal generator) to accomplish this.

Lets say you use a 15 GHz LO, then you would tune the TwinRX to=20
LO-RF=3D4.2 GHz and 3.8 GHz to receive the two signals.

Dustin

On 4/28/21 7:16 AM, arjan.feta@unifi.it wrote:
>
> Hi all,
>
> I=E2=80=99m trying in all ways (gnuradio, uhd) to receive two sines at =
18.8GHz=20
> and 19.2Ghz simultaneously with one TwinRX doughterboard. Sorry for=20
> the noob question, but is there any example that doe this? I have=20
> tried only in python since I don=E2=80=99t know c++, but am willing to =
go for=20
> c++ if it was possible.
>
> Regards,
>
>
> Arjan Feta
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------AAFB8E46D3A8E14ECEF78E3E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Arjan,<br>
    </p>
    <p>Seeing as the max frequency on the TwinRX is 6GHz, you would
      nominally need (at the very least) 2 mixers, a splitter, and a
      high frequency source (&gt;13.2GHz) (such as a signal generator)
      to accomplish this.</p>
    <p>Lets say you use a 15 GHz LO, then you would tune the TwinRX to
      LO-RF=3D4.2 GHz and 3.8 GHz to receive the two signals. <br>
    </p>
    <p>Dustin<br>
    </p>
    <div class=3D"moz-cite-prefix">On 4/28/21 7:16 AM, <a class=3D"moz-tx=
t-link-abbreviated" href=3D"mailto:arjan.feta@unifi.it">arjan.feta@unifi.=
it</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:omEQzdb3Ge82KGzwr6A6zYcVOMZn5MFTRmD5n6J2Bh8@lists.ettus=
=2Ecom">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>Hi all,</p>
      <p>I=E2=80=99m trying in all ways (gnuradio, uhd) to receive two si=
nes at
        18.8GHz and 19.2Ghz simultaneously with one TwinRX
        doughterboard. Sorry for the noob question, but is there any
        example that doe this? I have tried only in python since I don=E2=
=80=99t
        know c++, but am willing to go for c++ if it was possible.</p>
      <p>Regards,</p>
      <p><br>
      </p>
      <p>Arjan Feta</p>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------AAFB8E46D3A8E14ECEF78E3E--

--------------F4EA9357717FA3C90DB3FBA1
Content-Type: image/png;
 name="receive.png"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="receive.png"

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
b74Zxx13XFxyySVx2mmnRU7O/3VF7tWrV+y2224xadKk2G677eKcc86JiooKLxYAmyXYBwCa
TKhf95i0dkseYw2weePGjWv2tsXFxVFQUFDjMWF/5zVjxoyorKyM008/Pe66664mb9+3b984
66yzqkP9L9tzzz1jl112iRkzZsSpp55aXSm/bt26uOSSS2L48OFx4okn1gj1v3rfP/744+O2
227zQgHQKIJ9AOiCVJe3DT33AZKlqKio1mNfDvuF/J3HsmXLYtq0afHggw82uz3NiBEjYsSI
EXUuy83Njdzc3NiwYUONx1966aWYNWtW3H333dGrV68Gn3/LLbeMm266KXbYYYdWP//Vq1fH
qFGjYsmSJfWuc9ppp8Xdd9+tfQ9AQgj2AaCL0YInma+ZcQe6gnQ6HUuXLu3QY/hy2C/k7xzW
r18f1157bVx++eWxww47xIoVK1p9H6tXr441a9bEj370o+pgPJPJRGlpafX7pzH3+/3337/N
xmHYsGHxxhtv1AjuN2zYEJdcckncd999cd555wn1ARJEsA8ANJpwufHj1NrfihDuA51ZVaBf
VlZWZxV9R6kr5BfwJ89jjz0WgwYNioMPPrjN9jF//vzIy8uLY445pvqxysrK+Pvf/x59+/aN
vn37tsp+FixYELm5m49yhg8fXuPfOTk5tb4JkMlk4sEHH4w77rgjpk+fXu+3EQDIToJ9AOhC
tOBpPybUBdi81g706+qZX6Wl+6jaVsCfLIsXL4577rkn7rvvvjarRl+1alVMmzYtbrzxxvja
175WY9mKFSuiR48e0b1791bZ1/Dhw2PevHn1nsuKFStizJgxtR7v27dvXH/99TUeKy0tjYsu
uih+/OMfx0knneT3FoCEEewDQBfhj7X219o9902oC7j//J+mTnw7ePDgWus3J+wX8CfH559/
HldffXVcfvnlse2227bJPtatWxdXXnllnHHGGXHYYYfVWr799ttHOp2OTZs21bn9p59+GqNH
j4433nij+rHNhfetIZ1Ox3nnnRf77rtvTJkyJXr06OENA5Awgn0AgITRlgfoqlrS8z4/P7/W
+l8O+5sa8gv4s1smk4mHH344RowYESNHjmyTfVSF+iNGjIhTTjml1odYOTk5MWzYsHj66adj
zZo1sdNOO9V6jr59+8brr78eEfVX27e2tWvXxqWXXhrvvfde3HXXXdG/f39vGIAEEuwDQBfQ
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
C2otX758ebzyyitRXl5eq8q+OebPnx95eXlxzDHHVD9WWVkZf//736Nv377Rt2/fVjmvBQsW
RG5ubnXw89WfQYMGxTvvvFPneOywww41HqusrPRGBrLa5lrw1Fep3xZtx5JybwUAaLW/qw0B
ANARxo8fH+eee2784he/iOeffz6++OKLKC8vj7fffjuuuuqqGDt2bJSXl7c44F61alVMmzYt
brzxxlrV9itWrIgePXpE9+7dW+Wchg8fXqPq/qs/H374Yey66661tuvbt29cf/311d8miIgo
LS2NAQMGtOqYqzQFWsvmWvB0tvY7bXXtLC4ubtJE8QAAVQT7ANDJZHu1fpUtttgirr322rjh
hhviD3/4Q4waNSrGjx8fjz76aPz85z+PY489NvLy8qJHjx7N3se6deviyiuvjDPOOCMOO+yw
Wsu333772LhxY2zatKnO7T/99NMYMmRIjar7goKCRvf9b650Oh3nnXde7LvvvrFy5crEVrcC
ndfmqvULCgoaDPWTcl1r6w9Ei4qKYunSpd5QAECT5RoCAOg8khLqV8nLy4sJEybEhAkTai0r
KSmJHXbYIbbccstmPXdVqD9ixIg45ZRTao1NTk5ODBs2LJ5++ulYs2ZN7LTTTrWeo2/fvvH6
669HxL+r+8eMGdPmY7J27dq49NJL47333ou77ror+vfv32bvlfZ8rYHOozHV+o2Zu6TqGtRa
wXlSr2tlZWUxePBgkwsDAE2iYh8AyDqVlZWxZMmSKCwsrNGeprHWrl0bl112Wey7775x6qmn
Rk5O7V95UqlUdVC/ePHirDjv8vLymD59ejz66KNxyy23xNChQ6uXCeGBbNFQtX5zWvBk64S6
7fXtJlX7AEBzCPYBgGrtGR5v2LAhFi9eXOc+16xZEzNnzoyDDz64ycHKmjVroqioKEaPHh0n
n3xydaifyWTi5ZdfrrG/kSNHRmFhYTz44IPx+eefd/j4P/XUU3HVVVfFpEmT4rjjjqux7Isv
vmiT1hXa8gBNsblq/c214EmCtro2lpSU1LusrKxMr30AoEkE+wBARLR/Rfjq1avjlFNOiZUr
V9ZaNmPGjCgsLIz99tuv1rJZs2bFfffdV+ekup988kn87Gc/i8MPPzy+/e1v1whmKisrY+rU
qTW222KLLeKqq66K119/Pe6///4Ge+e39fgsWrQofvKTn8TBBx8cF1xwQY0JfSsqKuLyyy+P
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
gGAfAACABjXUjqcxVftt1X6nLbR1z/2GqvW14QFoPdttt13svvvuTVq/e/fuDfaZX716dQwZ
MqRG256v9qafNm1aLFu2rPqxk046qTo8j4hYtGhRredftWpVXHfddXHAAQfEySefHDNnzqw3
mG/MPayhbXv27BmTJ0+OXXfdNYqLi+O5556LiIgnn3wydtxxxxg5cqQ3T0II9gEAAGiRhqr2
s7X9TkdoqFofgI6Xn58fH374YUyaNCm+8Y1vxCeffFKjz/zixYtj+fLlUVpaWn0fys/PjxUr
VsQvfvGL6r71O++8c8ybNy8GDBhQax/77LNPjV7/H3zwQTz33HNx9tlnx8yZM2OXXXaJE088
MebPn9/k43/nnXdi5cqVMXbs2MjJqT/2rQr1IyImT54czz77bNx6663xwx/+sMHtyC5eKQAA
ADaroXY89VXtJzXUb6uq/Yaq9bXhAcgOOTk5MX78+Fi+fHm88cYbNe4NL774Yuyyyy7xpz/9
Kb744ovqZatXr46XX365WdfxZ555JsaPHx+9e/eOrbbaKo4//vhYu3ZtzJ49u9H3ow0bNkRZ
WVn86le/inPPPTeOP/74zW5zzDHHxMSJE2PhwoVx3HHHxR3mONkAACAASURBVEUXXRT9+/f3
BkjSe9UQAAAAsDkNteOJqFm131atd1q7p3577iuVSsW4cePqXa4ND0D22HfffaN///7xwgsv
VN8Lvvjii5g3b15ceeWVsXDhwnjrrbeq13/jjTfi6KOPjt69ezd5X4cddlj06dOn+t/bbrtt
9OnTJ5YsWVLvfWjKlCmRk5NTfb/Ny8uLa6+9Nm6++ea4/vrrG9UjPy8vL84+++zo06dPrF27
Nt59991EfhuuKxPsAwAA0CjNqdpvLR0VNrTHflXrA2SXAQMGxFFHHRWPPPJIrF27NiIi3n77
7Rg7dmzsv//+0b9//+pWOZlMJubMmROjR49u1r6qevFXyc3NjV69esVnn31W7z1o6tSpUVlZ
GZlMJjZs2BAvvPBClJaWxiOPPBKbNm1q1H4rKiriqaeeiqOOOir69OkTl112Wbz55pte/AQR
7AMAANAojanaT8okudlEtT5AdsnJyYkjjjgili5dGosXL46IiPnz58f/+3//LwYMGBBHHHFE
PP7447Fx48ZYu3ZtzJkzJ/bYY49m7atbt241/t3U+2iPHj1i7NixMXXq1Ljlllti5syZjdru
r3/9a7z//vtxxx13xE9+8pNYuXJlTJ06tUaLIbL8fWoIAAAAaKzNVe23hY5uDdCW+1etD5Cd
hg0bFn379o3S0tLYuHFjzJo1K/bYY4/IycmJcePGxYsvvhjLly+Pf/zjH3H44YfHFlts0aHH
O2HChCgoKIgbb7wxPvvsswbXXblyZVx99dXxs5/9LPr06RPnn39+7L///vHHP/4xnnrqKS9+
Qgj2AQAAaLTNVe23pvbsqd+YY2kLqvUBstP2228fxxxzTDzyyCPxxhtvxN57713dC3/fffeN
iIgFCxbE3LlzY+zYsR3+jbWtttoqzj333Jg9e3Y899xz9a5XXl4e06dPj/POOy923nnn6nOt
+tD+4osvjuXLl3sDJIBgHwAAgCZpqGq/tXSFCfxU6wNkr5ycnDjyyCNj4cKFcc0118SYMWOq
w/sdd9wxxowZE/fff388/vjjsddee2XFMR9yyCExatSouOmmm6rnBviq559/PioqKuLwww+v
8fhBBx0UU6ZMiSVLlsTNN98c5eXl3gTZ/h41BAAAADRFW1btZ1OVflsfm2p9gOy23377Rd++
fWPevHkxZMiQ6se7d+8exx57bDz22GMxfvz46kr+jtavX784//zz49lnn43nn3++1vIVK1bE
jTfeGOeee27k5ubWWNatW7c4++yz4+CDD47bb7895syZ4w2Q5QT7AAAANFl7VO1nq9YI91Xr
A7SvdDodAwcOjNGjR0dExJQpUyInJyemTZtW73V90KBBceSRR8aECRNiu+22q7GsoKAg+vTp
E9/61rdqteFJp9MxcuTIWLlyZTzyyCORm5tbvZ+6juO6666rXlbXdsuWLWv0sY8bNy6GDx8e
xxxzTKRSqbj77rur9zlo0KB44oknYuDAgbW2TafTMWTIkJg9e3asXbs2DjvssEilUg2ODx0r
lfHKAAAAXf0Poyb0xfUnVM3goqo/b2tI2ti2pJ/ysmXLVOvjWkqXNWvWrBg3blyNx0pKSqKw
sNDgeC1pJBX7AAAANEtrBtNdLeQT6gMALZFrCAAAAOgoSQ70q469JZX7AADNoWIfAACADtFZ
qvSXLVvmxQQA2pVgHwAAAJopnU7HQw89ZCAAgHalFQ8AAADtqri4OAoKCiKdTie213w6nY6l
S5dGWVlZFBUVeVEBgHalYh8AAIB2VVRUFOPGjYuHHnoo0ul04o6/qkp/3Lhxmw31i4uLY9my
ZZHJZGr8AAC0hIp9AAAAOkRVKF5QUBCDBw/O+ur9plbpFxcXx8SJExP7rQQAIHsJ9gEAAGi2
+qrPq6raNxeAVy2vas+TjQF/c9ruCPUBgLYk2AcAAKDV5efnx8SJEyMiGhWGZ2PA39w++kJ9
AKCt6bEPAABAm6gK90tKSqK4uLhR23y5//6sWbM6pAd/Op2OWbNmNbqPfpXi4uIoKSkR6gN0
Mul0OgYOHBipVKrOn9122y1OPfXUuPfee+Of//xno7efNm1a9Tff6lrny8urbNiwIZ544onY
d99961xO16FiHwAAgDaTn58f+fn5MXjw4IiIRofkX63gj4g2reKvqs6PiCZX6Fcdp0AfoPPe
yz766KN48cUXY/To0TF16tSYPHlypFKpiIhYv359vPbaa3HBBRfEAw88EPfee28MGDCg1vbp
dDoOP/zwWLNmTTz99NOx77771lrn97//fXz88cdx9tlnVz9/xL9b373yyisxderUWLduXSxc
uNAL08UJ9gEAAGhzVdX7BQUFTQrOv7xea4f8LQ3zv3xMSZj8F4C2kZeXFyNGjIjLLrssxo8f
H48//niceeaZdd4Lr7nmmvje974XP//5z+P++++Pfv36VS9/55134oEHHoh77rmnRqgfEXHf
fffF3Llz47LLLovVq1fHE088YeC7OME+AAAA7eLL1ftNDfgj6g/5qzQUrn85xK/S3DD/y/sX
6ANQZbfddosBAwbEvHnz4gc/+EHk5NTugn7kkUfG6aefHtOnT4/bbrstLrrooujWrVts2LAh
pk2bFkVFRdG3b99a240aNSpOOeWUyM3NjRdffNFgI9gHAACgfbU04I+ou6VPXWF/lZaE+HXt
Q6APwFdV9buvrKysd52ePXvG5MmT4y9/+UsUFxfHyJEjo7CwMJ588snYcccdY+TIkXVut8ce
exhgahDsAwAA0CFaI+D/stYI7usj0Adgc955551YuXJljB07ts5q/Sq77rprFBcXxxlnnBGT
J0+OG264IW699dZ46KGHGtwOvkywDwAAQIf6asAf0XoV9i3RXhP3ApBsGzZsiNdeey1+9atf
xbnnnhvHH3/8Zrc55phjYuLEiXHnnXfGcccdF3/4wx+if//+BpNGE+wDAACQFaoC/ojosJBf
mA/A5kyZMiWmTJlS47GTTjopbr755thnn30iN3fzkWteXl6cffbZ8dBDD8XatWvj3XffjUwm
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
6NevX63nSKVScdRRR8U222xT/VjPnj3j+9//frz88ss1WgitWrUqZs6cGfvvv7//YAAAAADQ
DpTXdjHdunWr8e+6Au+GbNiwITZu3BjbbLNNnds2pmK7pcfQ5Dd5Pce0fv362LhxY8ydOzd6
9OhR7/YffPBBZDKZVjn3xmjqcX31WBozvlX7qO9c6jN69Oj4xje+EXfffXccdthh0bNnz5g9
e3acdtppNar7AQAAAIC2o2KfJunZs2f06NEjPvnkkzqrxcvLyxNzLnl5edGjR4848sgjo7y8
PDKZTJ0/d911V+Tk5LT43CsrK2s9VlFR0eLjasm513cu9dlmm23irLPOir/85S+xcOHCWLdu
Xdx7771x6KGH+s8BAAAAAO1EsE+T9OvXL/bee+/46KOP4tNPP621fNWqVYk6l/322y/S6XR8
/vnnda7z4YcfxooVK1p07t27d48ePXrEP//5z1oh+urVq1t8XM2xzTbbREFBQXz00Ud1HkMm
k4mXX3651gS9qVQqxo8fH7169YqHH344XnrppTjggANi0KBB/nMAAAAAQDsR7NMk3bt3j+9/
//vx4YcfxmuvvVZjWXl5eZSUlCTqXM4444xYvnx5vPrqq7WW/+tf/4of/vCH8Y9//KNF5771
1lvHoEGD4oMPPoi1a9dWP15ZWRkvvPBCi4+rOXJzc+PMM8+MDz/8MObPn19r+bvvvhunnXZa
bNy4sday3XffPU444YS44447oqioKI499tg2b6cE0NX961//ij//+c8xefLkGDt2bOy5557x
ne98J6688sr405/+FK+//nqLvjVXUVERBQUFkUqlIpVKRUFBQY1vlWUymbj11lvjpz/9aaxf
v77GtuvWrYtnn302nnvuuTq/nba55QAAADSdYJ8mO+qoo+K0006LSy+9NF577bUoLy+Pzz77
LB544IHYeeedE3UuhYWF8ctf/jKmTJkSL730Uqxfvz4qKiri/fffj6lTp0ZBQUGMHj26Refe
u3fv+NGPfhQffvhh/PnPf44vvvgi1q9fHzNmzIivfe1rrXJczXHooYfGb37zm7jwwgtj7ty5
sX79+igvL4+33norfvWrX8XFF19c5zl169YtTj755IiIGDJkSOy9997+UwC0oZUrV8Zpp50W
//Vf/xXf//73Y9asWfHmm2/GXXfdFQcddFAUFxfHscceGx9//HGz99GtW7coKyuLDz/8MHbd
dddayzOZTLz77ruxZMmSWh8grF27Nn74wx/GhRdeWGd7t80tBwAAoBkynUhJSUkmImr8lJSU
/H/s3XtcVHX+x/H3ACIgiKaCpAZhbBmFBonXUjfBe+qvdDGz3a3dyryUiyRZZteVRLPSrKxt
t7KkrDYtKwMzvGBhUGloaqmzmijmoqJykZnz+6Mf/JwY7jPAwOv5eMzjoefyPWfO+TIc3uc7
n2O0ZAcPHjQCAgJsjklycrJhtVornXfgwIFK1ylTUFBgrFy50hgzZoxx5ZVXGomJicbu3buN
rVu3GpKMZ555pl77cOG2avKeqmuzqnZLS0uNjIwMY+7cuUbfvn2NyMhIY9asWUZqaqpRXFxc
Yfnq3ru97RQWFhpvvfWWMWbMGCMyMtKYP3++sW/fPiMjI8NmH9evX1/r/arP8bVYLEZmZqbx
yCOPGNddd50RERFhJCQkGFu3bjUsFkul5+D06dNGRESEkZaW1mJ/tvi8AX0aDcFqtRqLFy82
/Pz8jOzsbLvLpKenG6GhoUZubm69t5ebm2uEhoYakZGRRmlpqc288+fPG0VFRbVapybzwc91
U/HbY1XVCwAAcJ0CzmVj8+DWRvMWHBysY8eO1XpeZdPL+Pr6avLkyZo8ebLN9PXr10uSAgMD
670PdXlPdWnT3d1d/fr1U79+/Wq0fGXvfdu2bZWu4+XlpUmTJmnSpEk20y+77LJKRy/WdL/q
c3zd3NzUu3dv9e7dW/Pnz6/xMcvLy9NFF12k6OhofsgAwImsVqs+/fRT+fv72/xuvdDVV1+t
wYMHy93d3an74uHhIQ8PLh0BAAAAoCmgFA9q7fjx43r22Wdtau9Kv35N/8svv1RAQIAiIyM5
UM3IyZMnbR4YvGHDBt1+++3y8/Pj4ACAk/n4+OjUqVM6dOiQ3fnt27fXP/7xD3Xq1EmS/Xr5
p0+fVkpKiiZOnKjLL79c99xzj9LT0yv8Lrfnwva6d+9u8/B2i8WiUaNGaf/+/crOzpaHh4fN
dktKSqqcf+H2f/jhBy1cuFCxsbHq16+f7r//fqWnp9uU/jl16pTCw8Nt2jh79qzeeustjRw5
Um3btq3QLgAAAAA0RwT7qLXS0lItX75ca9eu1ZkzZ2QYhk6fPq33339fy5cv18KFCxUWFsaB
akYyMzP1+uuvq6SkRHv27NHKlSs1fPhwDgwAOJm7u7uGDRumgoICJSQkaNOmTRUeXmtvnQvr
5Z88eVILFizQ7373O61cuVLffPONRowYoYkTJ+r111+vtu69u7u7MjMz7d60d3d317p16xQa
GqrIyEiVlpbKMAwZhqGsrCx5enpWOb/sWwaffPKJBg0apG7duun999/Xpk2bNHnyZD344INa
smRJebjv7++vnJyc8vd25swZvfHGG4qOjtbatWv1xRdfyNPTk44DAAAAoNkj2EetXXTRRXr1
1Vf1448/6tZbb9Ull1yi0aNHKycnR+vWrdNtt90mk8nUYo6H2WxWYGBg+cNsExIStHjx4mb1
gMCOHTsqPT1dPXr00MKFC/X888+XjwwFADjXH/7wB/3xj3/U5s2bNWjQIPXp00fPPvustm3b
ppMnT1a7/vHjxxUTE6PIyEh5enrKx8dHo0eP1v3336/ExETt2rWrUd/fjz/+qDvvvFN/+ctf
9Ic//EG+vr5q1aqVevbsqSeeeEKPP/64MjIy7K6bm5ura665Rpdddpk8PDwUERGhe++9t0Vd
hwAAAABomSiUilpr3bq1BgwYoAEDBighIaHFH4+6PCfA1URGRurdd9+l8wNAI7jooov04osv
6pZbbtHKlSv1wQcf6L777pMkBQQEaNasWZoyZYq6dOlid/2goCBFRETYTDOZTBo8eLAeffRR
bdiwQeHh4Y32/tavX6/Dhw9r5MiRcnOzHXNy9dVXKygoSB988IEGDhxYYX63bt10+eWX//+F
rYeH4uLi6DQAAAAAmj1G7AMAADRxXl5eio2N1WuvvaY9e/YoNTVV999/vwoLC/XAAw9o5MiR
+vHHH+2u6+vrq7Zt21aY3qlTJ/n7++urr75qtJr0FotFW7ZsUUBAgN0bE35+fvL19dWGDRvs
liDy8vJSmzZt6CAAAAAAWhyCfQAAABdhMpkUFBSkoUOH6qmnntKuXbs0depU7dixQytXrqy0
DFxZLfsLtWrVSp6enpU+lLehHDx4UHl5ebr00kvLH4pb9mrdurWys7NVVFSkc+fO2b+YdeNy
FgAAAEDLw19CAAAATZRhGDp8+HClgX3Xrl01Y8YMBQQEaPPmzbJarXaXszciv6SkRCUlJerW
rVujvseQkBB17dpVP//8c/mDdX/72rNnjzp27EiHAAAAAID/Q7APAADQRFmtVt1+++06e/Zs
pcu0bdtWnp6e6tChg935Z86cUUFBQYXpx48f16lTp9SnTx+7I/prqroH1VY1393dXQMHDtSp
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
ic30kpISu23V1BVXXCE/Pz8dPHjQ7vzc3Fx99dVX5c8RKFv+2LFjdpcvKirS/v37a3yjAAAA
AAAAAEDLQLCPJsMwDK1atUo5OTkV5rVv315dunSRj4+PvLy8JEnXXHON+vfvrzVr1pTfDCjz
008/adu2bbrrrrvUoUMHm3mXXHKJpF9vIvx2nbKbBnVxzTXXaOjQoXr//fcrlM8xDEOvv/66
Nm7cWF7Kp1evXho8eLDWrl1r86DgMhs3blRiYiIdAwAAAAAAAIANgn00OQsXLtSuXbtUXFws
wzB06tQp/fvf/1ZWVpYSExPLg3o/Pz8tXrxYZrNZL730kvLz82WxWLR//3498cQTGjt2rG6/
/Xab8juS1Lt3b1155ZV67bXXdPDgQVmtVh0+fFiZmZmKioqq8363adNGTz31lM6ePaunn35a
R48eldVq1enTp/Xuu+9q48aN+uMf/1i+P76+vkpOTtb+/fu1bNkyHTt2TFarVefOnVN6eroe
e+wxPfTQQzWu2Q8AAAAAAACgZSDYR5NhMpn0pz/9SXfeeafee+893X777briiiv0P//zP9qz
Z48+/PBDm2BcksLDw/XRRx+pTZs2+vOf/6yIiAglJSXp5ptv1jPPPKN27dpV2E7nzp313nvv
KTIyUqNGjVJcXJwyMzMVFxcnX19f5eXlKSQkRFFRUSopKdGiRYvk4eGh1atXl88LDAyU2Wyu
0HZYWJjeffddhYaG6v7771ePHj1022236fTp01q5cqWCgoJslr/88sv173//Wx07dtTMmTMV
FhamW265Rd9//315+SEAAAAAAAAAuJDJsPcEUReVlpammJgYm2mpqakaOnQoZxoAnzcAfRpo
ORf5v/nGIhyrGf0JBQAAf3+Ac+miGLEPAAAANDOGYSg1NbXC9NTUVBmGwev/XrU9pnVZDwAA
AHAGgn0AAAAAAAAAAFwIwT4AAAAAAAAAAC6EYB8AAAAAAAAAABdCsA8AAAAAAAAAgAsh2AcA
AAAAAAAAwIUQ7AMAAAAAAAAA4EII9gEAAAAAAAAAcCEE+wAAAAAAAAAAuBCCfTQpBw4c0OzZ
sxUYGCiz2VzpclarVdOmTZPJZLL76tmzp4qKimq9favVqp07d+rFF1/Un/70J4WHh6tnz56a
MmWKkpOT9cknn+jgwYOyWq3l6xiGoUWLFlXYh9++h5ouBwAAAAAAAABV8eAQoCk4efKkVq9e
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
--------------F4EA9357717FA3C90DB3FBA1
Content-Type: application/pgp-keys;
 name="OpenPGP_0x85706BEA425306B5.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
Content-Disposition: attachment;
 filename="OpenPGP_0x85706BEA425306B5.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsDNBF2l+AIBDADqoQEhcP5i2KgR+o9m70oPY9PZLDmWvOBuid7fIt1z/RrLGaN5wcp/YEWn6=
iqC
0nA+Vdh6mWq9MbJjqLFJCDllTzh5LFuP6MvDIqXECC8cZvzCNEeE8wZ4zBfIk6NC3yn2o+OPT=
oln
Emfb5JZlXEpsdTcZitotHRzh8AM/4WHp9SIraVL6KC74f7EXsTRHmr7hD/NqbyfWUAjjSrC7f=
N/E
XgetCjoyVYq4Qe/qCtjxPmQNvA37iKUJTU/oVnqDwa7h8Z0DUgvkhq01fChMpAx2+HjLumLG/=
vrk
gpSe+RWf2eSYKlDgNAbxAKGTyzhbleGxJLidOZKqvxm9a4D53hPKXuZGVMUSRXiJ8ZyqF7E8a=
Fij
S0/Q5zZtAE1208knZz/I45hg84KyLDXvdy6W/V3eYrMJsjUEuAMekEFX6OVB3egfvZWU7LeJb=
thM
UgURSuFS5ZBdYUDbqcdVQ9396NXWYUl/+Xyd34ECkGY3xarxGCe0jncXoFazNLYXy02XV+sAE=
QEA
Ac0lRHVzdGluIFdpZG1hbm4gPDFtLjBuLmYxcjNAZ21haWwuY29tPsLBDgQTAQgAOBYhBAz+r=
wkB
/0dSaxTa6IVwa+pCUwa1BQJdpfhUAhsjBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEIVwa=
+pC
Uwa157kMALyFytTYJZfPT5CiGtxNvVzpaPQm0AJ//sguXVBqRn1gqbZC+0g5IGxArFl7/md72=
Ilr
zXNk29NQm7X7smxQ5kOxnEH5OWJEuuSvQVP6L6ron8AfEc33ZV0GwZp6JBGyCnBNGMliBXSoN=
Hqf
A6D+joK6knWvaPzsHykep1tdTUOtYoDopxt6y+BkzmReonefVae/Hkh7xyj2HG/uzL/eeBGtf=
Zsk
2/xh34fAQmzMC2ajQBT7wKld/NvcoxYSijVEn+m7H/gNEVlasXsUPUbioPu4YMFjUlx3cO6iE=
b2P
V3ffHHuk5XT5EMdIAFS1QRGQAf8WAGmAJJX4vNS7o5f6quvDmWBoKUD6Um/xCNi1By/pG+C4U=
W1A
1JunvlF4uKgo+uo4ey70UoAEq7UxGztz3vZDgJXz/pmAS/e1hLLQHAZxH1c0TS1caqit1uCss=
LfA
ib/2GFZ+AijdRvqj06/gNLwUzV5HBmQ5ROGvYcnwSQwBMs714Hc0b9pQw2LYEmj2ns0jRHVzd=
Glu
IFdpZG1hbm4gPGR3MnpxQHZpcmdpbmlhLmVkdT7CwQ4EEwEIADgWIQQM/q8JAf9HUmsU2uiFc=
Gvq
QlMGtQUCXaX4OAIbIwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRCFcGvqQlMGtQ+hDADKz=
Uem
XAzKGm66/5SjLgaOztT1lX+zsSY9R8/TZtH+9FRdQEIs/jkfXWGbt/bYWKVdbM7Sx65W64jjG=
sDF
kk/YeCFPs9XAzYhoI69geQbWhewbgJrbfO9V5NZyKWfq7dzGJW6abtIELw/wFF7gu4YdKzXaX=
g/Q
5kHcjMfj9elJFV6OSq4A8Cz2BowXjilvRodBnCOTNzx9TqvbJHMvWuRWigMz6FfCNOGSTM7hN=
Qre
CWAwC4ubOutKJn1PlRVjnC1l5N2DqMDtpEW5TDzi7BNLVww921hvi9lkJp0fAj/cbs86Qeooe=
kwo
ppVmssTVwD3ZePM7quaxNYebJkkmxNnfJ1uGDTwvV+qtwm39GC46392GhB5aR7U2MJba3DrmT=
yDj
RfsthxYJ8r5kjQLFvNjUQk01WZ0v7TxAiVytOm0qOt9ijJfhbi/F5vH8c+gCxYE/+DLeoKMYs=
rDo
h2sIhDsCcXQsTXuOtiU3G2sUTqX4XbJ+CicUNxrNTf7IEv/d3ZTNJkR1c3RpbiBXaWRtYW5uI=
Dxk
dXN0aW5AYXJhZGlvY29ycC5jb20+wsEOBBMBCAA4FiEEDP6vCQH/R1JrFNrohXBr6kJTBrUFA=
l2l
+AICGyMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQhXBr6kJTBrUnygwA5mh1hZVht6mmu=
sxq
8SkWRyLePSv9XeSlmWLT70aqxE4DzNf/wHgZC1dVwGllVLtOuDTsubtg7GeFvL2UFzsnKTQY/=
ZNs
eOVM5eSJfeDW2NykEGBohfgz39ettr72GsZRwAOqMgO8cabrLHg6jj+6Bkm29WUPJez0OX0jL=
leT
ICFwTPl0CmdzUF4YD3BFNjRqjCBZbZrjLsATT0cNDJKNRVSgWGICJLSUHbGdnGIWjEA5s1LG0=
mQw
y4jDjT6myKlU5pGvQnYB4r+MkL9Q804B3AzFRmW19FXM4vodzC3w2Pbvi+40YiaIlblP0FWg9=
Sms
9tOP62OQ7xg9wcFSgke4z1uiVRTfK1/l/nDDnmeKxeTEF43lH0z4tYHzPLc9RZv485eFCoHI2=
QFq
hLAAA5c3KO1xU8mhuCB2arhooeA813LKR5WMW3XYn7OxoEq9BTgrt5SU3rU65oTdnk4NqBLTb=
QXz
vb6z09q8rhuzJzsTNA04vZ1ZDIC3U4rivUe24NdbzSlEdXN0aW4gV2lkbWFubiA8ZHVzdGluQ=
HRo
cmFjaWFuZ3JvdXAuY29tPsLBDgQTAQgAOBYhBAz+rwkB/0dSaxTa6IVwa+pCUwa1BQJdpfh9A=
hsj
BQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEIVwa+pCUwa14GIMAM9ke6bH7eaZeukKz34S3=
7jr
VxFRkGO4I4eBTEm4kPolwIqvPfUHvC8POaeRX/h+OE6y4wH3LJbWcDf647JJn85xkZzWcpzqd=
XK/
GJclPNAng/gwCtOKnZeFS6LLBsGP6BwTfbx66B7CanYKyi5mmXXBDndMzaLaG8xsMs12Ck8oe=
llZ
BzMqpx9ygH7poGadUHQTMkdhCA96BBY5n20j0thAKemUG/I2oxQY83Fi27svqjhURj7UebdZY=
0F7
8hGsrvqAOCBn2OgA4ai93OxP6zEZw29g4LwgSfC6k+tvqgcHch4aFo0wupv5ejElukIKBl96x=
l3z
4r/+Cr/tiT9AxWsr8ntBGa3yLgSoEV/C4SJ9QXpFywDVosOdK+PbJUArM3I9/GBThOybW99sM=
4cW
JJuvnJzPcgtEYjQe7Bqg37vQJgcY1QIrGBcK81ZnYhZ3raxaY1cRv7+e3EiZZG7w3SIei0TMW=
ip8
lqVZIqEEWR8CcJ12+gSuCUisZhdxslsN0c7AzQRdpfgCAQwAxaw2Tyl4c2K1rI6HCQnRAoIaf=
Tlm
n1WXrYRjfuqcpFRF136by/dyWnbtBE1XU3RmQx5iCwTppJLapLjAGDh2XsBteLZjM1Dx/TsfX=
CON
9ZK2RAy+zkg+tKXHqB1CzzNEZ+qCeNaV67bQHCIcc4H4rxA419mUnlFVo/OGBwKzh744Eut38=
jTd
B8lfwKXqnBxCewTdBAodEJOd05ZiDG321qjXWQQgL0eVLTp1aT0Ee5NrToY9ulpQHVuLhBqc3=
5bi
uvf6uUArmBx7pCrSQuGn0oDWqECGGtpGvspFwQ6K5L4B/gzQvjuU+ihimTslmUhQyfFlnlax/=
I4X
fTTbGuPK7Uhi/ptM3ZCYN4/VP9M3vjEroh7L2tJVPRh5pz5MAybRjBWNqrKEdaNGOGLsL27ME=
050
GSajMkeA7xrGKL0owSShquw9G73Jfrab4MEEyH8D+8a/yBuej2XDYPWGjzZsBE2HzpPQx/Omd=
byT
5gu/P+qYNrOV+i5XoV3z8YLHdJt9ABEBAAHCwPYEGAEIACAWIQQM/q8JAf9HUmsU2uiFcGvqQ=
lMG
tQUCXaX4AgIbDAAKCRCFcGvqQlMGtRz+C/0TVLTOG0ePf4cxooaXC4rUbY7s8jfzc4Q0EHYaB=
YWl
5YH8Xut8yylxpuOjq0y9CWeACe+2Cy7wjiB9+VWwjp02nLRqgWMQDmFW9K83clsffhVVaGbvO=
vDN
96jMeyg16saEcTdLmTCpzYiH6B4qCbVUpbw4R9vK/ePAjL46KL7+7vnE63TiKbtfcAXjHvIEN=
IUB
JuQcTd17z1dvbPskVldnhrtrCRePsGmftxaEMHr8xULCPDaVu9C3RATD1SspOhPBGlDtYrElh=
hjM
vQZmMStRefv0D6xjPCrAQ/1ytpL9LUibH6U9JgP7P3H7sHfkCtKX3Hl3vOhR27IqRwthZclrf=
pC/
P1+kz80PW/1Wg8NrmM58CorDLT1Ya4pVVLN3YPc8ubDqqVSG6V8DSqapy2syWzocDRRpybm++=
FOa
tYhzrlcKqEWZ2LvvAgFLvRHHL9JfBWzQLt6dstTncJpddXzvyy0tX9y1kQsrWRvzMVlPU968f=
Fgj
AVFjv2DtHhIC5Vw=3D
=3D6Vr3
-----END PGP PUBLIC KEY BLOCK-----

--------------F4EA9357717FA3C90DB3FBA1--

--BbLhfthxEsGirTQMWgzRh3YL8iIySxgv6--

--RoqsEbh1dyYsFSiDwFT0UoXFFyi0RHzor
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEEDP6vCQH/R1JrFNrohXBr6kJTBrUFAmCJY3sFAwAAAAAACgkQhXBr6kJTBrWs
OQv9F7amkLI87RWQS5UTDsurAEaPVX0k9cgnIQKquWJR8a7nx9j0IDW1TVWvF9Kykl+hXuoqBE/N
tQcVfL3xNuCDkUsGeiHR9+dzJn4dc77jiDekI7PGUCy0zv3SyENBlQ4Hf2Z1HHsSWSRg9vaRqlHo
yluKFcbXhf/UeNp34kZDz5Q9QpJkri5sB/Le74E9HWtqhZgcGxlWhYhqaJPnvZ8hC9PEUayFy2jK
Mi+RwgkX4z4PfRHBa2m0o2nI6wWm0gtS4udHqTgFbnwX4hRncaeTFFopXjqvH1ex6k9icXITnIup
yB0jVT5PF1pN/7OoKOsPu7U3GXaYY8rSQadVp58S2hvaH6qUaVz2UlxQvZ2HphfmnzjfnB1BCY10
sHjSPK8ClJ+b2JkmCGYARDrEGwTHH8qu3JwmRNHjeMRvwksUbM2uGSqoBpp2DFC3qbJyn6GeefpQ
XS+z8gB8Yhsg7e+8yU8RfueaFTv7w+dWdXF8QZ3XXOq2l9Hx0cjBb7vuFxco
=11kE
-----END PGP SIGNATURE-----

--RoqsEbh1dyYsFSiDwFT0UoXFFyi0RHzor--

--===============3187612241388381810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3187612241388381810==--
